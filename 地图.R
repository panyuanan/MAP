library(readr)
library(rworldmap)
country <- read_csv("country.csv")

par(mai=c(0,1,0.2,0),xaxs="i",yaxs="i")

country$Time_stay<-factor(country$Time_stay,level=c("1","2","3","4"))

sPDF <- joinCountryData2Map(country, joinCode = "ISO3",
                                 nameJoinColumn = "ISO3V10" )

mapCountryData( sPDF , nameColumnToPlot='Time_stay'
                           , catMethod='categorical'
                          , mapTitle='Places have been'
                          , colourPalette=c('wheat2','pink','lightsalmon','tomato1')
                         , oceanCol='lightblue'
                           , missingCountryCol='snow' ,xlim=c(-10,145),ylim=c(-70,85),addLegend = FALSE)
          