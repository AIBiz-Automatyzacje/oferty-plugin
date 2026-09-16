---
name: omowienie
description: Co zrobić z ofertą PO wysyłce — przekłada analitykę czytania z panelu Traferto (czas na sekcjach, kolejność, sekcje pominięte, powroty) na plan rozmowy z klientem, pisze follow-up jako umówiony krok, mail wycofujący ofertę po milczeniu i pytanie po odmowie. Używaj ZAWSZE, gdy handlowiec wkleja dane z panelu, pyta „co widać z oferty", „jak z nimi rozmawiać", „klient nie odpisuje", „czytali tylko cenę", „jutro mam omówienie", „napisz follow-up", „odpisali, że za drogo", „odrzucili, co dalej" — nawet jeśli nie użyje słów „analityka" ani „omówienie". Nie używaj do pisania i publikowania oferty (skill „oferta").
---

# Omówienie

Po wysyłce analityka służy rozmowie, nie ocenie klienta. „Czytał dwie sekundy i napisał, że
za drogo" znaczy, że nie przeczytał — nie, że cena jest za wysoka. „Nie otworzył harmonogramu"
mówi, od czego zacząć omówienie. Ten skill zamienia to, co widać w panelu, na to, co handlowiec
powie klientowi; ton bierze z tonu oferty (`biblioteka/tony/`, ten sam, co przy publikacji).

**Nigdy nie mów klientowi, że wiemy, co czytał.** Nie w mailu, nie w rozmowie, nie w tekście
„zauważyłem, że przeglądał pan cennik". Klient ma widzieć handlowca, który dobrze pyta — nie
narzędzie, które go podgląda. Każde zdanie tu napisane ma przejść ten test.

## Co handlowiec wkleja

Dane z widoku oferty w panelu: czy otwarta, ile wizyt i osób, czas otwarcia, czas czytania
i czas na każdej sekcji, kolejność czytania (numerowana ścieżka), które sekcje pominięte, mapa
aktywności. Bierz tylko to, co podał; nie dopytuj o metryki, których nie ma. Jeśli wkleił
zrzut ekranu, przeczytaj go.

Jedna uwaga o danych: status „otwarta" zapala się przy pierwszym otwarciu, także przez skaner
poczty. Oferta „otwarta, 0 wizyt" albo wizyta trwająca sekundę bez sekcji to zwykle automat,
nie człowiek — powiedz to handlowcowi, zamiast budować na tym wnioski.

## Przekład czytania na rozmowę

Wzorce, które warto rozpoznać (nie lista do odhaczenia — dopasuj do oferty):

| Co widać | Co to zwykle znaczy | Od czego zacząć |
|---|---|---|
| Pominięty `harmonogram` | terminy nie są jeszcze tematem albo klient nie planuje startu | pytanie o terminy i o to, co musiałoby się zadziać, żeby ruszyć |
| 15 s na `cena`, zero na reszcie | oferta nie porwała; klient szukał kwoty | wracamy do koncepcji (`kontekst`, `zakres`), nie do rabatu |
| Wielokrotny powrót do `zakres` | coś jest niejasne albo sporne w koncepcji | „który element zakresu budzi najwięcej pytań?" |
| Długo na `kontekst`, potem koniec | klient sprawdzał, czy go zrozumieliśmy; może przekazał dalej | pytanie, komu jeszcze pokazał i jakie były reakcje |
| Kilka osób, różne sekcje | komitet dzieli lekturę (finanse czytają cenę, operacje harmonogram) | omówienie z całym komitetem, każdej roli jej sekcja |
| Długo na `faq` | obiekcje są żywe; sprawdzali, czy mamy odpowiedź | zapytać wprost, które pytania zostały bez odpowiedzi |
| Otwarta wiele razy, krótko | oferta krąży albo klient wraca po jedną rzecz | „czy jest coś, do czego wraca pan w ofercie?" |
| Nieotwarta po 3 dniach | mail nie doszedł, utonął, albo klient nigdy nie planował kupić | umówiony krok, potem wycofanie — nie seria przypomnień |

Wynik dla handlowca: trzy rzeczy — od czego zacząć rozmowę, jedno pytanie otwierające, jednej
rzeczy nie mówić. Krótko; handlowiec czyta to przed spotkaniem, nie po.

## Follow-up: umówiony krok, nie pytanie o odbiór

Follow-up wynika z tego, co ustalono przy wysyłce (kto czyta, kiedy omówienie, kiedy decyzja).
Pisz tekst tak, żeby zaczynał się od „byliśmy umówieni, żeby omówić wnioski" i pytał **„jakie
ma pan wnioski?"** — nigdy „czy miał pan okazję zapoznać się", nigdy „jak się podobała". Rytm
domyślny: kontakt 2–4 dni po wysyłce, reakcja najpóźniej po trzech dniach milczenia od
umówionego terminu.

Jeśli oferta jest poważna, a omówienia nie umówiono — zaproponuj je teraz, z całym komitetem
(online). Handlowiec opowiada, dlaczego tak, a nie inaczej. Odmowa omówienia jest informacją
o zaangażowaniu, nie porażką.

## Milczenie: mail wycofujący ofertę

Po umówionym terminie i jednym ponowieniu bez odpowiedzi — nie siódmy telefon, tylko mail
wycofujący ofertę. Handlowiec bierze winę na siebie (prawdopodobnie źle odczytał potrzeby),
oferta przestaje być aktualna, drzwi zostają otwarte. Wzór: `biblioteka/wzory/wycofanie-oferty.md`
(startowy w `${CLAUDE_PLUGIN_ROOT}/wiedza/biblioteka-start/wzory/wycofanie-oferty.md`). Dopasuj
do tonu i do tego, co było w ofercie; nie kopiuj wzoru słowo w słowo.

Milczenie po ofercie zwykle znaczy, że klient nigdy nie planował kupić — wycofanie porządkuje
lejek handlowca i czasem wywołuje odpowiedź, której nie wywołało pięć przypomnień.

## „Nie" jest normalnym wynikiem

Po odmowie zaproponuj **jedno** pytanie o powód poza ceną — najlepiej zadane przez inną osobę
niż handlowiec prowadzący („chciałbym zrozumieć, co zdecydowało, żebyśmy następnym razem
przygotowali się lepiej"). Bez obrony oferty, bez „ale przecież". Jeśli pada coś nowego —
obiekcja, argument, sformułowanie — zaproponuj wpis do biblioteki (skill `biblioteka`).

„Za drogo" ma pięć znaczeń (wobec rynku, wobec budżetu, wobec tego samego produktu, „bo
negocjuję", „bo nie wiem, co powiedzieć"); po dwóch sekundach czytania znaczy prawie zawsze
„nie zrozumiałem". W rozmowie: zgoda, że kwota może wyglądać na wysoką, prośba o chwilę,
dopytanie „wobec czego?". Rabat nie jest pierwszym odruchem. Więcej wzorów w
`biblioteka/obiekcje.md`.

## Co oddajesz

Tekst do wklejenia (mail, wiadomość, plan rozmowy) w tonie oferty, gotowy — nie szkic
z opcjami. Zanim oddasz, przejdź go `${CLAUDE_PLUGIN_ROOT}/wiedza/wzorce-pisania.md` i sprawdź
cztery rzeczy:

- nie ma słów „narzędzie", „system", „AI", „analityka", „panel", „Traferto" — także
  w nagłówkach planu, nie tylko w wiadomości do klienta (handlowiec czyta plan przed spotkaniem
  i powtarza z niego sformułowania, więc echo słowa z pytania handlowca wraca do klienta);
- nie ma „czy miał pan okazję", „jak się podobała";
- nie ma zdania, które zdradza, że wiemy, co klient czytał;
- konstrukcja „X, nie Y" / „nie X, tylko Y" / „nie o X chodzi, a o Y" najwyżej **raz** w całym
  tekście — to polska postać „to nie X, to Y", której plik wzorców nie łapie wprost, a która
  w planie rozmowy potrafi wystąpić kilkanaście razy. Napisz wprost, o co chodzi.
