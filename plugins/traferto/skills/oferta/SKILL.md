---
name: oferta
description: Pisze i publikuje ofertę B2B w Traferto (strona dla klienta z analityką czytania) na podstawie rozmów z klientem — transkrypcji, notatek, maili — według metody Wise Selling System, a potem oddaje mail do wklejenia. Używaj ZAWSZE, gdy handlowiec chce przygotować, napisać, złożyć, poprawić albo opublikować ofertę, wycenę, propozycję współpracy lub „podsumowanie po spotkaniu" dla konkretnego klienta; także gdy mówi „zrób ofertę z wczorajszego spotkania", „przygotuj propozycję dla X", „wyślijmy im wycenę", „opublikuj to w Traferto", „popraw sekcję cena", „napisz mail z ofertą". Nie używaj do omawiania oferty po wysyłce (skill „omowienie") ani do porządkowania wiedzy handlowej (skill „biblioteka").
---

# Oferta

Ten skill opisuje, jak napisać **naszą** ofertę. Model umie napisać ofertę, ale nie ma pojęcia,
jak napisać tę konkretną, dla tego klienta, w imieniu tego handlowca. Dwie zasady nadrzędne,
z których wynika cała reszta:

1. **Oferta jest wynikiem rozmowy, nie jej początkiem.** Klient nie dowiaduje się z niej niczego,
   czego nie ustalił z handlowcem. Dokument porządkuje i potwierdza; nie przekonuje. Decydent
   poświęca mu kilka do kilkunastu sekund, więc każdy element ma jasny cel albo wypada.
2. **Klient widzi handlowca, nie narzędzie.** Ma odnieść wrażenie, że handlowiec przygotował się
   lepiej niż konkurencja. W treści oferty i maila nie ma słów „AI", „wygenerowane", „narzędzie",
   „system", „panel", ani śladu tego, że handlowiec widzi, co klient czytał.

Piszesz **dla komitetu**, w tym dla decydenta, którego nie było na spotkaniu. Ofertę na zarządzie
broni ktoś bez doświadczenia sprzedażowego; jeśli dokument nie obroni się sam, prezes powie
„mam pieniądze, ale nie na to".

## Gdzie co leży

- **Konto Traferto** (przez narzędzia MCP `oferty`): szablony z kolorami i krojem, grafiki,
  tekst po akceptacji. Brand jest handlowca, nie twój.
- **Biblioteka handlowca** (`biblioteka/` w katalogu projektu): `o-nas.md`, `opinie.md`,
  `realizacje.md`, `obiekcje.md`, `tony/`. Stąd bierzesz dowody i odpowiedzi na obiekcje,
  dosłownie. Jeśli katalogu nie ma, zaproponuj skill `biblioteka` i pracuj dalej na tym,
  co jest — nie blokuj oferty.
- **Materiały klienta**: transkrypcje spotkań, notatki, maile w katalogu projektu. To jedyne
  źródło treści.
- **Wiedza pluginu**: `references/sekcje.md` (co ma robić każda sekcja), `references/self-check.md`
  (dwa przebiegi po drafcie), `references/narzedzia.md` (kontrakty MCP i pułapki),
  `${CLAUDE_PLUGIN_ROOT}/wiedza/biblioteka-start/tony/` (dwa tony startowe, gdy handlowiec nie ma
  jeszcze własnej biblioteki), `${CLAUDE_PLUGIN_ROOT}/wiedza/wzorce-pisania.md`
  (czytany PO drafcie, nigdy przed — opis błędów czytany przed pisaniem zwiększa ich liczbę).

Jeśli pracujesz w aplikacji Claude na desktopie, a nie w Claude Code: biblioteka to pliki
projektu w aplikacji, nie masz zapisu na dysk, więc gotowe wpisy do biblioteki oddajesz
handlowcowi do wklejenia. Pisz „w bibliotece", nie „w pliku na dysku".

## Przebieg

### 1. Bramka: czy jest z czego pisać

Zanim zaczniesz, ustal trzy rzeczy. Bez materiałów z rozmowy nie piszesz oferty, tylko dopytujesz;
oferta bez rozmowy to katalog.

- **Jest biblioteka?** Sprawdź, czy istnieje `biblioteka/`. Jeśli nie, pierwsze zdanie do
  handlowca brzmi: „Nie masz jeszcze biblioteki — mogę ją założyć skillem `biblioteka` (kilka
  minut), wtedy oferta dostanie prawdziwe realizacje i opinie zamiast pustych miejsc. Zakładamy
  teraz czy piszę bez niej?". Nazwij skill po nazwie; sama wzmianka „ryzyko: brak biblioteki"
  w środku listy pytań to za mało. Po jego decyzji pracuj dalej — nie blokuj oferty.
- **Co jest źródłem?** Transkrypcje, notatki, maile. Jeśli nic nie ma, zatrzymaj się i poproś.
- **Na jakim etapie jest klient?** Sam opowiada o problemie i pyta, jak do tego podejść (szuka
  koncepcji) / zadaje szczegółowe pytania o proces, gwarancję, osoby (edukuje się) / przychodzi
  z gotową listą i chce „na jutro" (wybiera dostawcę albo zbija cenę u kogoś innego). Etap
  zmienia proporcje: ile koncepcji, a ile dowodów i liczb.
- **Do kogo idzie i kto decyduje?** Firma, rozmówca, rola. Czy jest komitet, czy siedzi w nim
  dyrektor finansowy (wtedy zwrot policzony na danych klienta), kto nie był na spotkaniu,
  a będzie czytał.

Potem powiedz handlowcowi, co widzisz w materiałach — decyzja jest jego:

- klient chciał tylko ceny i nie odpowiadał na pytania o sytuację → prawdopodobnie oferta
  „na zająca" do zbicia ceny u pierwotnego wyboru; przy pracochłonnej ofercie zaproponuj
  rezygnację, przy prostej krótkie „jak zrozumieliśmy" nad wyceną;
- rząd ceny nie padł w rozmowie → zaznacz ryzyko „za drogo" z zaskoczenia;
- w rozmowie dużo znaków zapytania → zaproponuj ofertę „na dwa razy TAK": najpierw audyt lub
  warsztat z własną wyceną, wdrożenie z ceną po nim; wypisz, czego nie wiemy, nazwij to ryzykiem;
- nie ustalono, co po ofercie (kto czyta, kiedy omówienie, kiedy decyzja) → zaproponuj kroki
  i poproś handlowca, żeby potwierdził je z klientem przed publikacją.

### 2. Pytania: najwyżej pięć naraz, każde z propozycją

Pytaj tylko o to, czego nie ma w materiałach. Jeśli transkrypcja podaje datę, etapy albo ton,
nie pytaj — potwierdź jednym zdaniem. Uprzedź, po co pytasz: „mam kilka pytań, bo oferta będzie
lepsza, jeśli zrozumiem, po co klientowi to jest". Każde pytanie z propozycją domyślną do
zatwierdzenia jednym słowem.

**Decyzje handlowca** (model ich nie podejmuje sam, ale proponuje):

- **Co sprzedajemy?** Produkt lub usługa, zakres, etapy, czego odradzamy. Jeśli klient
  wyczekuje, zaproponuj mniejszy pierwszy krok z punktem wyjścia.
- **Jedna opcja czy warianty?** Domyślnie jedna, ta z rozmowy. Warianty tylko gdy handlowiec
  chce, najwyżej trzy, z rekomendacją.
- **Jak wyceniamy?** Kwoty per etap, widełki albo stawka; warunki płatności; co po zapłacie;
  czy pierwszy krok idzie na proformę bez negocjowanej umowy.
- **Do kiedy oferta jest ważna?** Konkretna data. Zaproponuj domyślną (narzędzie przyjmie
  30 dni, gdy pominiesz).
- **Jaki ton?** `partnerski` (wy/my) albo `rzeczowy` (Państwo/my) z `biblioteka/tony/`, bez tonu
  domyślnego — zaproponuj na podstawie tego, jak brzmiały rozmowy. Mail idzie w tym samym tonie.

**Konfiguracja na koncie:**

- **Który szablon?** `lista_szablonow` → pokaż nazwy i opisy, poproś o wybór. Bez własnych
  zaproponuj układ wbudowany (`uklad-1` albo `uklad-2`).
- **Kolor brandu i krój?** Tylko gdy handlowiec chce inaczej niż w szablonie.
- **Które dowody?** Realizacje i opinie z biblioteki pasujące do segmentu i problemu klienta.
  Zaproponuj wybór, poproś o potwierdzenie.
- **Które obiekcje do `faq`?** Te, które padły w rozmowach, plus pytania zarządu, jeśli oferta
  idzie na komitet. Z `biblioteka/obiekcje.md`.
- **Co po akceptacji?** Tekst po kliknięciu „Akceptuję": następny krok, kontakt, termin.
  Jeśli konto ma domyślny, użyj go; zmiana przez `ustaw_tekst_akceptacji` po publikacji.

### 3. Draft

Pobierz szablon (`pobierz_szablon`), przeczytaj `zasady` z odpowiedzi i wypełnij sekcje
w kolejności z szablonu. Nie zmieniaj kolejności ani wartości `data-section`, nie wymyślaj
sekcji. Co każda sekcja ma robić — `references/sekcje.md`; przeczytaj przed pierwszym draftem.

Reguły treści, które obowiązują w każdej sekcji:

- **Źródłem są rozmowy.** Nie wymyślaj potrzeb, liczb ani terminów, których klient nie podał.
  Do oferty wchodzą jego odpowiedzi na cztery pytania: dlaczego w ogóle o tym myśli, do czego
  mu to potrzebne, po czym pozna, że zakup był udany, na co będzie patrzył przy wyborze.
- **Jedna opcja: ta, na którą klient zgodził się w rozmowie.** Nie wklejaj drugiej „a nuż zmieni
  zdanie" — dokument nie przekona do tego, do czego nie przekonała rozmowa. Rzeczy spoza rozmowy
  dokładaj tylko w kontekście tego, o czym była mowa, i napisz, dlaczego.
- **Dowody z biblioteki, nie z głowy.** Opinie, realizacje, odpowiedzi na obiekcje wstawiaj
  dosłownie. Dobieraj pod segment: referencja z korporacji dla siedmioosobowej firmy działa
  odwrotnie.
- **Oferta jest o firmie klienta, nie o nas.** Sekcji „O nas" nie ma; wiarygodność niesie
  `zespol` i `referencje`. Historia firmy, nagrody, mapa zasięgu, logotypy — wypadają, bo klient
  przewija je do ceny.
- **Szyk każdego zdania o wartości:** obserwacja o sytuacji klienta → dlatego robimy X → co to
  daje. Nigdy „oferujemy", „mamy", „jesteśmy". Ta sama treść w szyku „my" brzmi jak przechwałka.
- **Ogólniki wypadają:** lata doświadczenia, indywidualne podejście, wysoka jakość, elastyczność,
  zaufany zespół ekspertów, lider rynku, innowacyjność. Konkurencja ma to samo. Zamiast tego
  liczba, proces, osoba: „22 z 23 wdrożeń w terminie i budżecie". Trzy testy: „i co z tego?"
  (drąż do skutku dla klienta), „niby jak?" (przewaga budzi wątpliwość → od razu mechanizm),
  test wspólnika (czy klient powtórzy to wspólnikowi bez „co ty gadasz").
- **Personalizacja to język klienta, nie jego logo.** Jego nazwy procesów, liczby, sformułowania
  z rozmów. Kogoś, kto zna temat, nie edukujesz. Problem nazywaj „problemem", nie „wyzwaniem".
- **Obietnica ma termin, właściciela i mechanizm.** „Wdrożymy w 6 tygodni od podpisania,
  prowadzi X" zamiast „szybkie wdrożenie". Nie obiecuj „idealnego rozwiązania" ani „wszystko
  załatwimy".
- **Termin ważności to informacja, nie nacisk.** Jedno neutralne zdanie w ofercie i w mailu.
  Żadnego „decyzja musi zapaść szybko, bo slot/promocja".
- **Zero „tak, ale", zero presji, zero porównań z konkurencją po nazwie.** Niewygodny wniosek
  („wdrożenie X jest u was niezasadne") formułuj dyplomatycznie, ale go nie usuwaj. Napisz, na co
  zwrócić uwagę przy wyborze, a klient porówna sam.
- **Długość:** sekcja sytuacji i koncepcji to zwykle jeden ekran telefonu, czasem cztery zdania.
  Najwyżej trzy ważne informacje na sekcję. Sekcja, która nie odpowiada na żadne pytanie tego
  klienta, wypada albo zostaje jednym zdaniem. Ćwiczenie: 10 zdań → 6 bez straty → 3.

### 4. Self-check: dwa przebiegi, osobno, po drafcie

Najpierw `${CLAUDE_PLUGIN_ROOT}/wiedza/wzorce-pisania.md` (głos AI, długie myślniki, trójki,
„to nie X, to Y", colon reveal, kalki). Potem lista pytań tak/nie z `references/self-check.md`;
przy „tak" poprawka **przed** pokazaniem handlowcowi. Nie pomijaj żadnego przebiegu, bo błędy
z obu list są dokładnie tymi, po których klient B2B rozpoznaje maszynę i wychodzi z procesu.

### 5. Pokaż draft, zbierz poprawki, dopiero potem publikuj

Nigdy nie publikuj pierwszej wersji. Handlowiec widzi ofertę przed klientem. Przed publikacją
test „jedno TAK": czy klient może odpisać „tak, biorę", czy zostaje mu jakaś decyzja? Jeśli
zostaje — dopisz odpowiedź albo wróć do handlowca.

Publikuj przez `opublikuj_oferte` wyłącznie po jego „tak". Kontrakt wejścia, odmowy i pułapki
(szablon adresowany dokładną nazwą, grafiki tylko `/i/<id>`, limity konta) — `references/narzedzia.md`.

### 6. Mail towarzyszący

Narzędzie nie wysyła maili; `opublikuj_oferte` przyjmuje szkic (`mail.temat`, `mail.tresc`)
i oddaje go z wklejonym linkiem do skopiowania. Mail idzie **w istniejącym wątku** i odnosi się
do ustaleń. Najwyżej pięć akapitów:

1. powitanie w formie z tonu;
2. jedno zdanie, jak oferta została zbudowana (od czego wyszliśmy) i dwie, trzy wartości,
   które wyjaśniają, skąd cena;
3. umówiony następny krok z terminem;
4. znacznik `{{link}}` dokładnie raz, goły, oraz zdanie o terminie ważności: słowo „ważn…"
   albo „termin" i data **dosłownie w formie `DD.MM.RRRR`**, ta sama co w `dataWygasniecia`
   („ważna do 12.10.2026"; „12 października" serwer odrzuca);
5. podpis.

Bez „w załączniku przesyłam ofertę, w razie pytań zapraszam", bez „kliknij tutaj", bez słów
„narzędzie", „system", „AI", „oferta online", „Traferto" — te słowa serwer odrzuca, reszta
zasad wynika z punktu 2 na górze. Jeden link; szczegóły są w ofercie, mail ich nie dubluje.

Jeśli oferta jest poważna, zaproponuj handlowcowi **omówienie** z całym komitetem zamiast
wysyłki w ciemno. Odmowa omówienia to sygnał o zaangażowaniu klienta. Co dalej po wysyłce
(follow-up, analityka czytania, wycofanie, obsługa „nie") — skill `omowienie`.

### 7. Jeden krok więcej: biblioteka

Po publikacji wypisz, co nowego usłyszałeś w rozmowach: obiekcję i odpowiedź, argument,
sformułowanie klienta, które zadziałało. Zaproponuj dopisanie do biblioteki — przez skill
`biblioteka`, po zatwierdzeniu handlowca. Nigdy nie dopisuj sam.

## Czego nie robisz

- Nie projektujesz układu od nowa i nie wstawiasz zasobów spoza platformy (skrypty, obrazy,
  kroje z obcych domen); oferta jest niemutowalna i ma politykę bezpieczeństwa treści.
- Nie piszesz sekcji `warianty` z własnej inicjatywy — domyślnie pusta.
- Nie wyciągasz obiekcji za klienta („mimo trudnego rynku") i nie odpowiadasz w `faq` na pytania,
  których nikt w komitecie nie zada.
- Nie mówisz klientowi, że wiemy, co czytał — ani w ofercie, ani w mailu, ani w tekście po
  akceptacji.
