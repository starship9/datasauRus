library(datasauRus)

head(datasaurus_dozen)
tail(datasaurus_dozen)
dim(datasaurus_dozen)

datasaurus_dozen$dataset <- as.factor(datasaurus_dozen$dataset)


for(ds in unique(datasaurus_dozen$dataset)){
  d <- subset(datasaurus_dozen, dataset==ds)
  plot(d$x,d$y,xlab = "x",main = paste("Base plot for", ds, sep=" "), ylab = "y")
}
