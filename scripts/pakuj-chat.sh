#!/usr/bin/env bash
# Pakuje trzy skille pluginu do ZIP-ów dla Chatu w aplikacji Claude
# (Ustawienia → Skills → wgraj plik). Chat nie czyta pluginów ani nie zna
# `${CLAUDE_PLUGIN_ROOT}`, więc każdy ZIP dostaje własną kopię `wiedza/`,
# a odwołania w tekstach skilli schodzą na ścieżki względne wobec katalogu skilla.
#
# Źródłem jest WYŁĄCZNIE `plugins/traferto/` — ZIP-y nie są edytowane ręcznie.
# Uruchomienie: scripts/pakuj-chat.sh  → dist/chat/{oferta,omowienie,biblioteka}.zip
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
SRC="$ROOT/plugins/traferto"
OUT="$ROOT/dist/chat"
SKILLS=(oferta omowienie biblioteka)

rm -rf "$OUT"
mkdir -p "$OUT"

for skill in "${SKILLS[@]}"; do
  work="$OUT/$skill"
  cp -R "$SRC/skills/$skill" "$work"
  cp -R "$SRC/wiedza" "$work/wiedza"

  # Podmiana `${CLAUDE_PLUGIN_ROOT}/wiedza/…` → `wiedza/…`. Strażnik na WYNIKU:
  # podmiana bez dopasowania byłaby cichym no-opem, a ZIP z literałem zmiennej
  # kazałby Claude'owi szukać nieistniejącego katalogu.
  before=$(grep -rl 'CLAUDE_PLUGIN_ROOT' "$work" | wc -l | tr -d ' ')
  if [ "$before" -eq 0 ]; then
    echo "BŁĄD: skill '$skill' nie odwołuje się do CLAUDE_PLUGIN_ROOT — sprawdź, czy skrypt jest jeszcze potrzebny" >&2
    exit 1
  fi
  find "$work" -name '*.md' -print0 | xargs -0 perl -pi -e 's#\$\{CLAUDE_PLUGIN_ROOT\}/#./#g'
  if grep -rq 'CLAUDE_PLUGIN_ROOT' "$work"; then
    echo "BŁĄD: po podmianie w '$skill' został literał CLAUDE_PLUGIN_ROOT" >&2
    grep -rn 'CLAUDE_PLUGIN_ROOT' "$work" >&2
    exit 1
  fi

  # Każda ścieżka `./wiedza/…` z tekstów musi istnieć w ZIP-ie.
  while IFS= read -r ref; do
    if [ ! -e "$work/$ref" ]; then
      echo "BŁĄD: '$skill' odwołuje się do '$ref', którego nie ma w pakiecie" >&2
      exit 1
    fi
  done < <(grep -rho '\./wiedza/[A-Za-z0-9_./-]*' "$work" | sed 's#^\./##; s#/$##' | sort -u)

  (cd "$OUT" && zip -qr "$skill.zip" "$skill" -x '*.DS_Store')
  rm -rf "$work"
done

echo "Spakowano do $OUT:"
ls -l "$OUT"/*.zip
