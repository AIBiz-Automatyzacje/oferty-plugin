# Co ma robić każda sekcja oferty

Skład sekcji jest stały i wynika z szablonu, nie z rozmowy. Oba układy wbudowane (`uklad-1`,
`uklad-2`) mają identyczny skład i różnią się tylko arkuszem stylów; szablony własne handlowca
mogą mieć inny skład — wtedy bierzesz go z `sekcjeDokumentu` w odpowiedzi `pobierz_szablon`.
Odpowiedź niesie też dwa warianty składu: `wariantKrotki` i `wariantDlugi`; krótki dla ofert
incydentalnych (wycena pozycji dla stałego klienta), długi dla poważnych (idą na komitet).

Kolejność: problem → koncepcja → wycena → harmonogram → dowody → FAQ. Cena stoi wcześnie,
ale nigdy sama — zawsze obok tego, z czego wynika.

## Nagłówek (hero)

Tytuł oferty i dla kogo. Tytuł mówi o rezultacie dla klienta albo o tym, co robimy w jego
sytuacji, nie o nas („Skrócenie obsługi zgłoszeń w serwisie Kowalski", nie „Oferta firmy X").

## `kontekst` — „jak zrozumieliśmy waszą sytuację"

Gdzie klient jest teraz, co nie działa, co go to kosztuje, dokąd chce dojść, po czym pozna,
że się udało. Jego słowami z rozmów, bez słowa o nas. To najczęściej czytana strona ofert
w pomiarach, bo ludzie czytają o sobie. Ma być tak napisana, żeby nieobecny prezes mógł
powiedzieć „dokładnie o to chodzi" albo „nie, nie ten problem" — oba wyniki są cenne.

## `diagnoza` — co z tej sytuacji wynika

Złożoność problemu i konsekwencje, których komitet może nie widzieć („to nie rana, to
złamanie" — inaczej klient poprosi o plasterek). Koszt czekania policzony na danych klienta,
bez straszenia. Cel sprowadzony do liczby. Ta sekcja broni przed „zróbmy coś prostszego".

## `zakres` — koncepcja

Co w związku z tym robimy, dlaczego właśnie tak, czego odradzamy i dlaczego (także „tego nie,
bo zwrot się nie spina"), w jakiej kolejności, etap po etapie. Serce oferty i miejsce na
sprzedaż doradczą; tu klient ma powiedzieć „to oni wymyślili". Każdy element koncepcji
odpowiada na „i co z tego?" dla tego klienta.

## `warianty` — domyślnie pusta

Jedna droga dobrana do problemu albo najwyżej trzy opcje z rekomendacją środkowej. Nigdy lista
dodatków do dokupienia. Wypełniasz wyłącznie decyzją handlowca i tylko wtedy, gdy warianty nie
zostały rozstrzygnięte w rozmowie.

## `cena` — nigdy sama kwota

Przy każdym etapie lub wariancie: co wchodzi, warunki płatności, co się dzieje po zapłacie,
z czego kwota wynika (dwie, trzy wartości osadzone w problemie klienta). Kwota bez etapu i etap
bez kwoty nie przechodzą. Widełki tylko decyzją handlowca; same widełki z „musimy się spotkać,
żeby doprecyzować" to odrzucona oferta. Klient wyczekujący widzi tu mniejszy pierwszy krok
i odwracalność (punkt wyjścia z umowy), nie rabat.

## `harmonogram` — plan od dnia decyzji

Krok po kroku, z kamieniami milowymi i orientacyjnym czasem, przed podpisaniem umowy — nie
„ułożymy po podpisie". Zaznacz, gdzie klient jest teraz („dwa etapy za nami").

## `referencje` — dowody dobrane do klienta

Realizacje i opinie dobrane do segmentu, branży i problemu, dosłownie z `biblioteka/`.
Historia klienta w schemacie: sytuacja → trudność → co zrobiliśmy → wynik z liczbą. Logotypy
i cytat „polecam" bez kontekstu nie są dowodem.

## `zespol` — kto poprowadzi

Z jakim doświadczeniem w takich firmach, kto pomaga. Argument o zespole opisuje skutek dla
klienta (nie trzeba tłumaczyć od nowa, mierzyli się z tym problemem), nie etykietę
„doświadczeni eksperci". Komitety o to pytają zawsze.

## `gwarancja` — tylko z mechanizmem

Zwrot części kwoty, prawo wyjścia, punkt wyjścia z umowy, poziom usługi z liczbą. Serwis
i opiekę opisz scenariuszem, jaki klient zobaczy w głowie: awaria → co się dzieje → w jakim
czasie. Bez mechanizmu sekcja wypada.

## `faq` — obiekcje, które padły, i pytania zarządu

Wpisy z `biblioteka/obiekcje.md`. Pytania, które zarząd zadaje zawsze: jaki problem to
rozwiązuje, jaki zwrot i jak liczony, czy robiliśmy to w takich firmach, kto prowadzi, jakie
kroki, po czym poznamy wyniki. **Każde z tych sześciu ma w FAQ własną, krótką odpowiedź**, nawet
gdy pełna treść stoi w `zespol` czy `harmonogram` — prezes, który nie był na spotkaniu, czyta FAQ
zamiast całości; jedno zdanie z odesłaniem do sekcji wystarczy. Pisz też z myślą o tym, że klient
wrzuci ofertę do modelu AI
i zapyta „czy to sensowne i czy nie za drogo" — jeśli odpowiedź jest w tekście, model odpowie
naszym językiem. Obiekcji, której klient nie ma, nie wywołujesz.

## `zalaczniki` — tylko gdy są

Jeden dokument główny, reszta pod linkiem.

## Zamknięcie (CTA)

Jeden konkretny następny krok ustalony z klientem. Szablon ma dwa przyciski: akceptacja
i pytanie — nie zmieniaj ich etykiet (są w `etykietyCta`). Tekst po akceptacji mówi, co dzieje
się dalej i kiedy. Nigdy „w razie pytań zapraszamy do kontaktu".
