# Narzędzia MCP Traferto (serwer `oferty`)

Z pluginu narzędzia mają nazwy `mcp__plugin_traferto_oferty__<narzędzie>`; przy ręcznie dodanym
serwerze `oferty:<narzędzie>`. Każde narzędzie ma własny opis i schemat wejścia w kliencie —
tu są tylko rzeczy, których ze schematu nie widać, a które kończą się odmową albo trwałą wadą
w opublikowanej ofercie.

## Trzy ustalenia, które obowiązują wszędzie

1. **Nazwa szablonu jest kluczem.** Wszystkie narzędzia adresują szablon po nazwie, dokładnie
   takiej, jaka jest na koncie — **wielkość liter ma znaczenie**. Po zmianie nazwy w panelu
   używaj nowej. Zapis pod istniejącą nazwą nadpisuje szablon; opublikowane oferty zostają bez
   zmian, bo mają własny dokument.
2. **Grafiki wyłącznie ścieżką względną `/i/<id>`** przepisaną z pola `grafiki` odpowiedzi
   `pobierz_szablon` (wartość `sciezka`). Adres absolutny, adres Supabase, plik z obcej domeny —
   odmowa. Oferta jest niemutowalna: absolutny adres przeżyłby zmianę domeny i się zepsuł.
3. **Grafiki nie mają nazw plików.** Rozróżniaj je po wymiarach i kolejności wgrania (pierwsza
   wgrana jest pierwsza na liście). Gdy nie wiesz, której użyć — zapytaj; zła grafika
   w opublikowanej ofercie zostaje tam na zawsze.

## `lista_szablonow`

Bez argumentów. Oddaje nazwę, opis, układ, kolor główny, moment zmiany, limit szablonów konta
i wolne miejsca. Nie oddaje HTML.

## `pobierz_szablon`

`szablon`: `uklad-1`, `uklad-2` (wbudowane) albo nazwa szablonu konta. Bez argumentu — układ
domyślny. Odpowiedź niesie `html`, `sekcjeDokumentu` (skład tego dokumentu w kolejności),
`sekcje.wariantKrotki` / `sekcje.wariantDlugi`, kontrakt brandu (`--brand`, akcent, krój,
minimalny kontrast wobec bieli), `logoMaksBajtow`, `sciezkiWzgledne`, `etykietyCta`, `grafiki`
(dla szablonu konta) i `zasady`. **Przeczytaj `zasady` i trzymaj się ich co do słowa** — to
ograniczenia, których nie widać w markupie, a których złamanie to odmowa publikacji.

Składając dokument: zostaw wszystko, co nie jest treścią sekcji (tag trackera, stopka, link
„Prywatność", skrypt decyzji, kontener dokumentu, sekcja CTA z etykietami przycisków). Wypełniasz
treść wewnątrz elementów `data-section`; nie zmieniasz ich nazw ani kolejności, nie dodajesz
własnych. Logo handlowca tylko jako `data:` URI w granicach `logoMaksBajtow`.

## `opublikuj_oferte`

Wejście: `html` (cały dokument, do 2 MB), `tytulOferty` (≤ 200 znaków), `nazwaKlienta` (≤ 120),
`nazwaFirmy` (≤ 120), `emailKontaktowy`, `kolorGlowny` i `kolorAkcentu` (`#rrggbb`, z kontrastem
wobec bieli — weź z szablonu), `kroj` (z listy self-hostowanej; dziś `Inter`), `dataWygasniecia`
(ISO 8601, opcjonalna → 30 dni) oraz `mail: { temat, tresc }`.

Mail: temat ≤ 120 znaków, treść ≤ 1200 znaków i ≤ 5 akapitów, znacznik `{{link}}` dokładnie raz,
zdanie o terminie ważności ze słowem „ważn…" lub „termin" **i datą dosłownie w formie `DD.MM.RRRR`**
(np. „ważna do 12.10.2026" — serwer porównuje z `dataWygasniecia` w strefie `Europe/Warsaw`;
„12 października" ani „12.10" nie przejdzie), zakazane: „oferta online", „Traferto",
„narzędzi…", „system", „wygenerowa…", „AI", „kliknij tutaj". W treści maila żadnego adresu
`http(s)://` — link wstawia serwer w miejsce znacznika.

Wynik: `link`, `slug` (identyfikator z linku, część po `/o/`), `wygasa`, `mail` z wklejonym
linkiem — ten tekst handlowiec kopiuje do swojego klienta pocztowego.

Odmowy są jawne i czytelne: zły format koloru, za niski kontrast, krój spoza listy, brak markera
w dokumencie, mail łamiący ramy, **limit ofert w miesiącu albo limit publikacji na godzinę**
(zdanie odmowy podaje liczby i moment zerowania). Odmowę przekaż handlowcowi słowo w słowo
i zaproponuj, co zrobić; nie próbuj obejść.

## `ustaw_tekst_akceptacji`

`slug` + `tekst`. Tekst, który klient widzi po kliknięciu „Akceptuję" — dla jednej oferty,
także po publikacji (jedyna mutowalna rzecz w opublikowanej ofercie). Pusty tekst zdejmuje
nadpisanie i oferta wraca do tekstu konta albo systemowego. Zwykły tekst bez HTML; e-maile
i telefony zamieniają się w odnośniki same.

## `zapisz_szablon`

`nazwa` (≤ 80, nie `uklad-1`/`uklad-2`), `opis` (≤ 200), `uklad`, `kolorGlowny`, `html`. Sprawdzany
jak publikacja; odrzuca dokument z adresem absolutnym. Liczba szablonów jest limitem konta —
wolne miejsca w `lista_szablonow`. Szablon to budowa dokumentu, nie treść oferty.

## `usun_szablon`

`nazwa`. Usuwa szablon z grafikami; opublikowane oferty zostają (ich grafiki żyją do wygaśnięcia).
Nieodwracalne — potwierdź z handlowcem przed wywołaniem.

## Gdy coś nie działa

- `401` / „brak dostępu": token z ustawień pluginu jest nieaktualny (konto ma jeden aktywny
  token; wygenerowanie nowego w panelu unieważnia poprzedni). Poproś o nowy token — nie
  zgaduj, nie ponawiaj w pętli.
- Odmowa trybu dostępu (konto ograniczone / oczekujące / w usuwaniu): to decyzja
  administratora Traferto, nie błąd — przekaż zdanie odmowy i zakończ.
- Odmowa „zapis nie powiódł się, szczegóły w monitoringu": awaria po stronie platformy;
  zaproponuj ponowienie za chwilę, oferta nie została opublikowana.
