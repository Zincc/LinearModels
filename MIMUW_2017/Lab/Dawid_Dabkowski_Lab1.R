library("PBImisc")
library("lmtest")
library("gridExtra")
library("lattice")

heights <- heights
genomes <- genomes

# MODEL 1 (wzrost ¿ony na podstawie wzrostu mê¿a)
model1 <- lm(Wife ~ Husband, data=heights)
summary(model1)
# wykres danych
xyplot(Husband~Wife, data=heights, type=c("p","r"), pch=19)
# wykresy diagnostyczne (wygladaj¹ w porz¹dku)
plot(model1)

# MODEL 1log (wzorst ¿ony na podstawie wzrostu mê¿a, dane zlogarytmizowane)
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

# for (i in 1:4) {
#   cat("Model ", i, "\n")
#   cat("rstandard: ", head(rstandard[[i]]), "...")
#   cat(head(rstudent[[i]]))
#   cat(head(cooks.distance[[i]]))  
# }

#testynazwy <- c(bptest, gqtest, hmctest, dwtest, bgtest, harvtest, raintest, resettest, shapiro.test)
#testywyniki <- lapply(modele,)