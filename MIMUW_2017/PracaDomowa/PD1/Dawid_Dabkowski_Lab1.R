library("PBImisc")
library("lmtest")
library("gridExtra")
library("lattice")

heights <- heights
genomes <- genomes

# MODEL 1 (wzrost zony na podstawie wzrostu meza)
model1 <- lm(Wife ~ Husband, data=heights)
summary(model1)
# wykres danych
xyplot(Husband~Wife, data=heights, type=c("p","r"), pch=19)
# wykresy diagnostyczne (wygladaja w porzadku)
plot(model1)

# MODEL 1log (wzorst zony na podstawie wzrostu meza, dane zlogarytmizowane)
model1log <- lm(log(Wife) ~ log(Husband), data=heights)
summary(model1log)
# wykres danych (prawie nie zmienil sie w skali logarytmicznej)
xyplot(Husband~Wife,scales=list(x=list(log=T), y=list(log=T)), 
       data=heights, type=c("p","r"), pch=19)
# wykresy diagnostyczne (wygladaja w porzadku)
plot(model1log)

# MODEL 2 (zawartoœæ GC na podstawie wielkoœci genomu)
model2 <- lm(GC ~ size, data=genomes)
summary(model2)
# wykres danych
xyplot(GC~size, data=genomes, type=c("p","r"), pch=19)
# wykresy diagnostyczne (widac niedopasowanie np dla wykresu Normal Q-Q)
plot(model2)

# MODEL 2log (zawartoœæ GC na podstawie wielkoœci genomu, dane zlogarytmizowane)
model2log <- lm(log(GC) ~ log(size), data=genomes)
summary(model2log)
# wykres danych (wydaje sie bardziej liniowy niz bez logarytmu)
xyplot(GC~size, scales=list(x=list(log=T), y=list(log=T)), 
       data=genomes, type=c("p","r"), pch=19)
# wykresy diagnostyczne (widac poprawe wzgledem poprzedniego modelu)
plot(model2log)

# Wyznaczenie reszt i miar wp³ywu modeli
modele <- list(model1,model1log,model2,model2log)
rstandard <- lapply(modele,rstandard)
rstudent <- lapply(modele,rstudent)
cooks.distance <- lapply(modele,cooks.distance)

# Testy na ostatnim modelu

# Test Breuscha-Pagana jednorodnosci wariancji
bptest(model2log)
# p-wartosc duza, powyzej progu 0.05, przyjmujemy wiec, ze wariancje
# reszt nie zaleza od zmiennych objasniajacych modelu

# Test Goldfielda-Quandta jednorodnosci wariancji
gqtest(model2log, order.by=genomes$size, point=0.5)
# Duza p-wartosc, zatem wariancje reszt nie zaleza istotnie od
# wielkosci size jesli podzielimy na 2 polowy wzg. tej zmiennej

# Test Harrisona-McCabe jednorodnosci wariancji
hmctest(model2log, order.by=genomes$size)
# Inny test na wariancje reszt; znow p-wartosc dostatecznie duza

# Test Durbina-Watsona niezaleznosci reszt
dwtest(model2log, order.by=genomes$size)
# p-wartosc bardzo mala, wyglada na to ze wystepuje autokorelacja
# miedzy resztami a resztami posort. ze wzgl. na zmienna size

# Test Breuscha-Godfreya niezaleznosci reszt
bgtest(model2log, order.by=genomes$size, order=3)
# Podobnie jak poprzednio wskazuje to na wystepowanie autokorelacji
# w tym tescie tez dla wyzszych rzedow (tutaj do rzedu 1,2,3)

# Test Harveya-Colliera liniowosci modelu
harvtest(model2log, order.by=genomes$size)
# Wyglada na to ze zaleznosc miedzy zm. objasniajaca a
# zm. objasniana ma faktycznie charakter liniowy

# Test Rainbow liniowosci modelu
raintest(model2log, order.by=genomes$size)
# Wyglada na to ze liniowosc jest wrecz taka sama na calej probie
# jak i na podzbiorach wyznaczonych wzgledem size

# Test Ramseya RESET
resettest(model2log, type="regressor")
# Uwzglednienie wyzszych poteg nie daje lepszej liniowosci

# Test normalnosci reszt
shapiro.test(model2log$residuals)
# Reszty nie wygladaja na normalne, co jednak niekoniecznie jest problemem