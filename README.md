# Plugin Traferto dla Claude Code

Skille i connector MCP dla [Traferto](https://app.traferto.pl) — narzędzia, które zamienia ofertę B2B w osobną stronę dla klienta i pokazuje, które jej części przeczytał.

## Instalacja

W Claude Code:

```
/plugin marketplace add AIBiz-Automatyzacje/oferty-plugin
/plugin install traferto@oferty-plugin
```

Przy włączaniu pluginu Claude Code poprosi o **token Traferto** — wygeneruj go na ekranie Ustawienia w panelu [app.traferto.pl](https://app.traferto.pl). Token jest pokazywany tylko raz, a konto ma dokładnie jeden aktywny token (nowy unieważnia poprzedni). Plugin niesie adres serwera MCP, więc po wklejeniu tokenu nic więcej nie trzeba konfigurować.

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

## Aplikacja Claude na desktopie

Skille działają też bez Claude Code: dodaj katalog `plugins/traferto/skills/<nazwa>` jako skill w aplikacji, a `biblioteka/` jako pliki projektu. Skill nie zapisuje wtedy plików sam — oddaje gotowe wpisy do wklejenia. Connector MCP podłącza się w ustawieniach aplikacji adresem `https://app.traferto.pl/mcp` przez OAuth (instrukcja na ekranie Pomoc w panelu).

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
