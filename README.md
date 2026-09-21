# Plugin Traferto dla Claude Code

Skille i connector MCP dla [Traferto](https://app.traferto.pl) — narzędzia, które zamienia ofertę B2B w osobną stronę dla klienta i pokazuje, które jej części przeczytał.

## Instalacja

W Claude Code:

```
/plugin marketplace add AIBiz-Automatyzacje/oferty-plugin
/plugin install traferto@oferty-plugin
```

Przy włączaniu pluginu Claude Code poprosi o **token Traferto** — wygeneruj go na ekranie Ustawienia w panelu [app.traferto.pl](https://app.traferto.pl). Token jest pokazywany tylko raz, a konto ma dokładnie jeden aktywny token (nowy unieważnia poprzedni). Plugin niesie adres serwera MCP, więc po wklejeniu tokenu nic więcej nie trzeba konfigurować.

**Zasięg instalacji.** `/plugin install` w sesji włącza plugin domyślnie tylko dla katalogu, w którym siedzisz (`local`). Jeśli chcesz mieć skille w każdym projekcie, wybierz zasięg `user` w oknie instalacji albo zainstaluj z terminala:

```
claude plugin install traferto@oferty-plugin --scope user
```

**Gdzie leży token.** Claude Code zapisuje go w pęku kluczy systemu (macOS Keychain), nie w plikach konfiguracji — nie trafi do `~/.claude.json`, do kopii zapasowej ani do repozytorium przez przypadek. To nie znaczy, że jest niewidoczny dla samego Claude'a: proces działa na Twoich uprawnieniach, więc na wyraźne pytanie o token może go odczytać i wypisać w rozmowie. Traktuj transkrypt sesji jak plik z sekretem, a token wygeneruj na nowo, gdy padł w rozmowie.

## Co jest w środku

Trzy skille, każdy do innego momentu pracy z klientem:

| Skill | Kiedy | Co robi |
|---|---|---|
| `oferta` | „zrób ofertę ze spotkania z X” | od materiałów z rozmów (transkrypcje, notatki, maile) przez pytania i draft po publikację w Traferto i mail do wklejenia |
| `omowienie` | „wklejam analitykę, jutro omówienie”, „klient nie odpisuje”, „odrzucili” | przekłada to, co klient przeczytał, na plan rozmowy; follow-up, mail wycofujący ofertę, pytanie po „nie” |
| `biblioteka` | pierwsze użycie, „dodaj referencję”, po każdej ofercie | zakłada i rozwija `biblioteka/` handlowca: wartości, opinie, realizacje, obiekcje, tony |

Metoda pisania ofert pochodzi z Wise Selling System (Szymon Negacz), przepisana własnymi słowami; kody odcinków przy regułach prowadzą do publicznych materiałów.

## Jak to działa dla wielu firm

Plugin jest jeden dla wszystkich i niesie wyłącznie **metodę**. Wszystko, co odróżnia jedną firmę od drugiej, jest danymi poza pluginem:

- **konto Traferto** — szablony, kolory, krój, tekst po akceptacji, token;
- **`biblioteka/`** w projekcie handlowca — kim jesteśmy, opinie, realizacje, obiekcje, tony (skill `biblioteka` zakłada ją z plików startowych z `plugins/traferto/wiedza/biblioteka-start/`);
- **materiały klienta** — transkrypcje i notatki w folderze projektu.

Aktualizacja pluginu nie dotyka niczyjej biblioteki.

## Trzy drogi: Claude Code, Cowork, Chat

Ten sam plugin obsługuje trzy miejsca pracy. Różni je to, skąd biorą skille i jak podłączają connector.

| Gdzie pracujesz | Skille | Connector MCP |
|---|---|---|
| **Claude Code** (terminal albo zakładka Code w aplikacji) | plugin z tego repozytorium (sekcja „Instalacja") | z pluginu, token z Ustawień panelu |
| **Cowork** w aplikacji Claude | plugin: Customize → Plugins → Add marketplace → `AIBiz-Automatyzacje/oferty-plugin` → Install | z pluginu |
| **Chat** w aplikacji Claude | **trzy ZIP-y** z Releases (niżej), wgrane w Customize → Skills | connector w Ustawieniach aplikacji adresem `https://app.traferto.pl/mcp` przez zgodę (OAuth); instrukcja na ekranie Pomoc w panelu |

Chat nie czyta pluginów (dokumentacja Anthropic: „Plugins are available in Cowork and Code. They aren't used in Chat"), więc dla Chatu skille są pakowane osobno.

### ZIP-y dla Chatu

`scripts/pakuj-chat.sh` buduje `dist/chat/oferta.zip`, `omowienie.zip` i `biblioteka.zip` **z tych samych plików**, co plugin: każdy ZIP dostaje własną kopię `wiedza/`, a odwołania `${CLAUDE_PLUGIN_ROOT}/wiedza/…` schodzą na ścieżki względne. ZIP-ów nie edytuje się ręcznie; gotowe leżą w [Releases](https://github.com/AIBiz-Automatyzacje/oferty-plugin/releases/latest). Wgrywasz je w aplikacji Claude: Customize → Skills → dodaj skill z pliku, każdy ZIP osobno.

W Chacie `biblioteka/` to pliki projektu w aplikacji, nie katalog na dysku — skill nie zapisuje plików sam, tylko oddaje gotowe wpisy do dodania. Po aktualizacji pluginu ZIP-y trzeba wgrać ponownie (Chat nie aktualizuje skilli z marketplace).

## Struktura repozytorium

```
.claude-plugin/marketplace.json     ← to repo jest marketplace'em
plugins/traferto/
  .claude-plugin/plugin.json        ← manifest, userConfig (token), mcpServers
  .mcp.json                         ← serwer `oferty` → https://app.traferto.pl/mcp
  skills/oferta/                    ← SKILL.md + references/ (sekcje, self-check, narzędzia MCP)
  skills/omowienie/
  skills/biblioteka/
  wiedza/wzorce-pisania.md          ← self-check głosu AI, czytany po drafcie
  wiedza/biblioteka-start/          ← pliki startowe biblioteki handlowca
```

Wydawca: Akademia Automatyzacji.
