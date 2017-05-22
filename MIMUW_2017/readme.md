Modele liniowe z efektami stałymi, losowymi i mieszanymi
--------------------------------------------------------

# Motto

> Essentially, all models are wrong, but some are useful.
> George Box

[Do obejrzenia](https://www.ted.com/talks/jack_horner_shape_shifting_dinosaurs) jako luźne wprowadzenie do przedmiotu.


Plan spotka&#324; MIM UW:
-------------------------

Formuła zajęć: 2w + 2l + 1p

Planowana tematyka spotkań (może ulec drobnym zmianom w trakcie semestru)

* 2017-02-28 - Diagnostyka modelu, [Lab](https://rawgit.com/pbiecek/LinearModels/master/MIMUW_2017/Lab/01_lab.html)
* 2017-03-07 - Analiza wariancji i testy post hoc, [dodatkowe materialy do wykladu](https://rawgithub.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/02_oneway.html), [Lab](https://raw.githubusercontent.com/pbiecek/LinearModels/master/MIMUW_2017/Lab/02_lab.Rmd)
* 2017-03-14 - Analiza interakcji dwu i wielo kierunkowa [brudnopis](https://rawgithub.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/04_two_way_anova.html)

* 2017-03-21 - Model hierarchiczny [notatki](https://rawgit.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/05_hierarchia.html), [Lab](https://rawgit.com/pbiecek/LinearModels/master/MIMUW_2017/Lab/05_lab.html)
* 2017-03-28 - Wybór modelu [brudnopis](https://rawgit.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/06_wybor_modelu.html), [Lab](https://github.com/pbiecek/LinearModels/blob/master/MIMUW_2017/Lab/06_lab.Rmd)
* 2017-04-04 - Prezentacja projektu, [Lab](https://github.com/pbiecek/LinearModels/blob/master/MIMUW_2017/Lab/07lab.Rmd)

* 2017-04-11 - Jeden składnik losowy [notatki](https://rawgithub.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/07_intro2mixedModels.html)
* 2017-04-25 - Dwa składniki losowe (zagnieżdzone/hierarchincze) [notatki](https://rawgithub.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/08_intro2mixedModelsPart2.html), [Lab](https://github.com/pbiecek/LinearModels/blob/master/MIMUW_2017/Lab/08lab.Rmd)
* 2017-05-09 - Dane panelowe  [notatki](https://rawgithub.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/09_randomCoefs.html), [Lab](https://github.com/pbiecek/LinearModels/blob/master/MIMUW_2017/Lab/09lab.Rmd)

* 2017-05-16 - Dowolne struktury korelacji [notatki](https://rawgithub.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/10_spatial.html)
* 2017-05-23 - Model regresji logistycznej i Poissona [notatki](https://rawgit.com/pbiecek/LinearModels/master/MIMUW_2017/Wyklad/10_spatial.html), [Lab](https://github.com/pbiecek/LinearModels/blob/master/MIMUW_2017/Lab/10lab.Rmd)
* 2017-05-30 - Prezentacja projektu

Projekt:
---------

Projekt może być realizowany w grupach od 1 do 3 osób. 
Projekty będą przedstawiane na zajęciach (terminy wypisane powyżej), 
ale też, z uwagi na złożoność, silnie zalecane jest konsultowanie postępów prac w trakcie semestru. 
Tygodniowo na projekt przeznaczona jest jedna dodatkowa godzina, jest to czas na przedstawianie etapów pośrednich projektu.
Projekty, które nie będą zaprezentowane nie zostaną ocenione.

## Projekt

### Czynniki wpływające na czas rozwiązywania zadań z matematyki PISA 2015

Zaliczenie projektu odbywa się w etapach, poniżej opisane są wymagania na każdy etap zaliczenia. 
Kolejne etapy oddaje się/zalicza po kolei, ale oddać etap X+1 trzeba mieć zaliczony etap X.
Pełne rozwiązanie określonego etapu jest równowazne uzyskaniu określonej liczby punktów.
Każdy etap przed oceną musi był zgłoszony na GitHub.

* etap 1 - 10pkt - Model liniowy zbudowany na cechach zadania (id zadania, pozycja w kwestionariuszu)
* etap 2 - 20pkt - Diagnostyka i wizualizacja modelu z etapu 1
* etap 3 - 30pkt - Model zbudowany na cechach zadania i ucznia (płeć, kraj, kwestionariusz)
* etap 4 - 40pkt - Diagnostyka i wizualizacja modelu z etapu 2
* etap 5 - 50pkt - Rozważenie i weryfikacja występowania i istotności interakcji pomiędzy kluczowymi elementami modelu
* etap 6 - 60pkt - Weryfikacja potrzeby i poprawny wybór transformacji/kodowania dla zmiennych zależnych i niezależnych
* etap 7 - 70pkt - Model mieszany na cechach zadania i ucznia z poprawnie wskazanymi efektami losowymi/stałymi
* etap 8 - 80pkt - Uwzględnienie wag w procesie budowy i walidacji modelu
* etap 9 - 90pkt - Uwzględnienie zarówno zadań z matematyki jak i z języka polskiego (weryfikacja interakcji)
* etap 10 - 100pkt - Przygotowanie krótkiego reprodukowalnego raportu podsumowującego najistotniejsze wyniki modelu (w jezyku angielskim, do 4 stron)

Dane o zadaniach (dane o uczniach należy odczytać niezależnie, patrz niżej):

* Tylko dane o zadaniach z matematyki https://www.dropbox.com/s/lm4ew2ccrpawk58/actionTimeScoreMath.rda
* Dane o zadaniach z matematyki i czytania https://www.dropbox.com/s/soyynah0lylu1gd/actionTimeScore.rda

Dla inspiracji:

* Dane PISA 2015 są dostępne na stronie http://www.oecd.org/pisa/data/2015database/. 
* Krótka instrukcja jak wczytać te dane znajduje się tutaj http://smarterpoland.pl/index.php/2016/12/pisa-2015-how-to-readprocessplot-the-data-with-r/.
* Przykładowy kwestionariusz https://github.com/pbiecek/WarsztatyBadawcze/blob/master/MiNI_2017/materialy/EnglishStudentQuestionnaire.pdf
* Podręcznik analizy danych PISA
https://github.com/pbiecek/WarsztatyBadawcze/blob/master/MiNI_2017/materialy/SPSS_Analysis_Manual.pdf
* Omowienie części wyników z badania PISA 2015 https://github.com/pbiecek/WarsztatyBadawcze/blob/master/MiNI_2017/materialy/PISA_2015_results.pdf


Ocena:
------

Na ocenę składają się trzy składniki:

* Ocena z projektu. To główny składnik wchodzący do końcowego zestawienia, można uzyskać do 100 punktów.
* Punkty z prac domowych (nieobowiązkowe). Prace domowe należy zgłaszać przez GitHub w ciągu tygodnia od ogłoszenia pracy domowej. Za rozwiązanie wszystkich prac domowych otrzymuje się 25 punktów. Mniej rozwiązanych prac domowych to proporcjonalnie mniej punktów. Prac będzie od 7 do 10.
* Punkty z końcowego egzaminu (nieobowiązkowy). Egzamin pisemny z którego można uzyskac do 25 punktów.

Maksymalna liczba punktów to uzyskania to 150. Oceny

* 0-49: 2
* 50-69: 3
* 70-89: 3,5
* 90-109: 4
* 110-129: 4,5
* 130+: 5

Zaliczenie jest tak skonstruowane by premiować systematyczną pracę - projekty i prace domowe.

Aktualna lista punktów
----------------------

[Prace domowe plus projekty](https://docs.google.com/spreadsheets/d/1xSeo9uKNtvn3fotDsFP9Ha0BV0s7bDrzyyD9a7TnCX8/edit?usp=sharing)

Materiały
---------

* Analiza danych z programem R, Modele liniowe z efektami stałymi, losowymi i mieszanymi, Przemysław Biecek, http://biecek.pl/R/#Analiza
* Practical Regression and Anova using R, Julian J. Faraway, ftp://cran.r-project.org/pub/R/doc/contrib/Faraway-PRA.pdf
* Regression Modeling Strategies, Frank E Harrell, http://biostat.mc.vanderbilt.edu/tmp/course.pdf

