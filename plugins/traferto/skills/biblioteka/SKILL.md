---
name: biblioteka
description: Zakłada i rozwija bibliotekę handlową firmy (`biblioteka/` w projekcie): kim jesteśmy i lista wartości, opinie klientów, realizacje z liczbami, obiekcje z odpowiedziami, tony wypowiedzi, wzory maili. Używaj ZAWSZE przy pierwszym użyciu Traferto w projekcie (brak katalogu `biblioteka/`), gdy handlowiec chce „spisać, co robimy", „dodać referencję", „zapisać opinię klienta", „dopisać obiekcję", „mamy nową realizację", „zmień ton", oraz po każdej opublikowanej ofercie i po każdym „nie" — żeby dopisać to, co nowego padło w rozmowach. Nie używaj do pisania oferty (skill „oferta") ani do follow-upu (skill „omowienie").
---

# Biblioteka

Skill `oferta` bierze dowody z biblioteki, nie z głowy — opinie, realizacje, odpowiedzi na
obiekcje wstawia dosłownie i dobiera pod segment klienta. Bez biblioteki oferta ma ogólniki
albo zmyślone konkrety; z biblioteką ma liczby i słowa, które już raz zadziałały. Biblioteka
należy do handlowca i rośnie z pracą nad klientami; platforma Traferto nic o niej nie wie.

## Kształt

Katalog `biblioteka/` w katalogu projektu (obok materiałów klientów):

| Plik | Co zawiera | Kto pisze |
|---|---|---|
| `o-nas.md` | kim jesteśmy, komu pomagamy, czego nie robimy, **lista wartości** (nazwa + jak o niej mówimy, każda po teście „i co z tego?") | handlowiec raz, potem uzupełnia |
| `opinie.md` | cytaty klientów z podpisem, branżą i datą | handlowiec + skill |
| `realizacje.md` | historie: sytuacja → trudność → co zrobiliśmy → wynik z liczbą; tag branży i problemu | handlowiec + skill |
| `obiekcje.md` | obiekcja, co znaczy, jak odpowiadamy w ofercie i w rozmowie, z której oferty | start z pluginu, potem głównie skill |
| `tony/*.md` | definicje tonów (`partnerski`, `rzeczowy` dostarczone; własne dopisuje handlowiec) | skill dostarcza, handlowiec dopisuje |
| `wzory/wycofanie-oferty.md` | wzór maila wycofującego ofertę po milczeniu | skill dostarcza |
| `slownik.md` | pojęcia metody Wise Selling System z jednozdaniową definicją | skill dostarcza |

Pliki startowe leżą w `${CLAUDE_PLUGIN_ROOT}/wiedza/biblioteka-start/` — dokładnie ten układ.

## Założenie biblioteki (pierwsze użycie)

Gdy `biblioteka/` nie istnieje:

1. Skopiuj komplet z `${CLAUDE_PLUGIN_ROOT}/wiedza/biblioteka-start/` do `biblioteka/`
   w katalogu projektu (w aplikacji Claude na desktopie: oddaj pliki handlowcowi do dodania
   jako pliki projektu).
2. Przeprowadź krótki wywiad do `o-nas.md` — to jedyny plik, którego nie da się wypełnić bez
   handlowca. **Jedno pytanie na wiadomość**, z propozycją na podstawie tego, co już wiesz
   z projektu; czekaj na odpowiedź, zanim zadasz następne (lista czterech pytań naraz to
   formularz, nie wywiad):
   - Komu pomagamy (segment, wielkość firmy, rola rozmówcy) i z jakim problemem przychodzą?
   - Czego **nie** robimy albo komu odradzamy współpracę? (To buduje wiarygodność w ofercie.)
   - Lista wartości: co robimy inaczej niż inni — i za każdym razem „i co z tego?" dla klienta,
     aż dojdziesz do skutku, który klient powtórzy wspólnikowi. Pseudo-wartości (doświadczenie,
     jakość, indywidualne podejście, zaangażowany zespół) wypadają; zostaje liczba, proces, osoba.
   - Kto prowadzi projekty i co z tego wynika dla klienta?
3. Zapytaj o dwie, trzy realizacje i opinie na start — nie musi być komplet; oferta może
   powstać z jedną dobrą realizacją.

Nie przedłużaj wywiadu ponad to, co potrzebne do pierwszej oferty. Reszta dojdzie z pracy.

**Założenie biblioteki to skopiowanie plików startowych i wywiad — nie dopisanie treści.**
Jeśli w projekcie jest już oferta albo odpowiedzi handlowca z pytań skilla `oferta` (realizacje,
opinie, zespół, obiekcje), NIE przepisuj ich do plików w tym samym ruchu. „Załóż mi bibliotekę"
to zgoda na katalog i pliki startowe, nie na wpisy. Wpisy z tej oferty przechodzą tę samą drogę,
co każde inne dopisanie (sekcja niżej): zaproponuj gotowe, handlowiec zatwierdza, dopiero potem
zapisujesz.

## Dopisywanie po ofercie i po rozmowie

Po każdej opublikowanej ofercie (skill `oferta` kończy tym krokiem) i po każdym „nie" (skill
`omowienie`) wypisz, co nowego padło:

- nowa obiekcja i odpowiedź, która zadziałała → `obiekcje.md` (pole „Z naszej oferty" przy
  istniejącym wpisie albo nowy wpis w formacie z pliku);
- sformułowanie klienta, które trafiło („to nie plasterek, to złamanie") → `o-nas.md`, przy
  wartości, której dotyczy;
- nowa liczba po zakończeniu projektu → `realizacje.md`;
- opinia z maila albo rozmowy → `opinie.md`, dosłownie, z datą i podpisem, za zgodą klienta
  na cytowanie (zapytaj handlowca, czy ją ma).

Zaproponuj gotowe wpisy. **Handlowiec zatwierdza, potem dopisujesz.** Nigdy nie dopisuj bez
zatwierdzenia i nigdy nie zmieniaj istniejących wpisów — opinie są cytatami, a wpis w obiekcjach
może pochodzić z oferty, której nie znasz. Zmiana istniejącego wpisu to osobna, jawna prośba
handlowca.

## Format wpisów

Trzymaj format z plików startowych; skill `oferta` czyta je maszynowo (dobiera po tagach
branży i problemu). W `realizacje.md` każdy wpis ma tag `branża:` i `problem:`; w `opinie.md`
podpis, branżę, datę; w `obiekcje.md` sześć pól z pliku. Wpis bez liczby albo bez tagu jest
gorszy od braku wpisu — dopytaj, zanim zapiszesz.

## Nowy ton

Gdy handlowiec chce inny ton niż dwa dostarczone: nowy plik `tony/<nazwa>.md` w tym samym
układzie (forma zwrotu, dystans, jak brzmią niewygodne wnioski, przykład otwarcia `kontekst`,
przykład otwarcia maila). Jedna forma zwrotu w całym dokumencie; „dzień dobry" w pierwszym
kontakcie; zero „dziękuję, że znalazł pan chwilę".
