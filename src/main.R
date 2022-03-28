# Adam Schwarz, Katie Crocker, Katelyn Osborne  
# LemmonHeads 

#####
install.packages("maps")
install.packages("dplyr")

# load libraries
library("spocc")
library("sp")
library("raster")
library("maptools")
library("rgdal")
library("dismo")
library("sf")
library("tidyverse")
library("tidyr")
library(dplyr)
library(maps)


#####

# load functions from functions.R #
source("src/functions.R")

#####

# pull data #
  # group member 1
lemmonData <- occ(query='Asclepias lemmonii A.Gray', from='gbif', limit=1000)
lemmonData <- lemmonData$gbif$data$Asclepias_lemmonii_A.Gray
  
  # group member 2
lemmonData2 <- occ(query='Asclepias lemmonii A.Gray', from='gbif', limit=1000)
lemmonData2 <- lemmonData2$gbif$data$Asclepias_lemmonii_A.Gray

  # group member 3
lemmonData3 <- occ(query='Asclepias lemmonii A.Gray', from='gbif', limit=1000)

#####

# clean data #
  # no "ABSENT" data
unique(lemmonData$occurrenceStatus)
absent <- subset(x=lemmonData, occurrenceStatus != "PRESENT")
lemmonData <- anti_join(lemmonData, absent)
lemmonData

  # no zero counts
unique(lemmonData$individualCount)
zeroMilkweed <- subset(x=lemmonData, individualCount==0)
lemmonData <- anti_join(lemmonData, zeroMilkweed)
lemmonData

  # remove missing data
lemmonData <- lemmonData %>% filter(longitude != 'NA')
lemmonData

#####

# mapping #

# max and min latitude
max.lat <- ceiling(max(lemmonData$latitude))
min.lat <- floor(min(lemmonData$latitude))

# max and min longitude
max.lon <- ceiling(max(lemmonData$longitude))
min.lon <- floor(min(lemmonData$longitude))

# save as jpg
jpeg(file="Assignment5_LemmonHeads.jpg")

# load spatial polygons
data(wrld_simpl)

# plot base map
plot(wrld_simpl, 
     xlim = c(min.lon, max.lon), # sets upper/lower x
     ylim = c(min.lat, max.lat), # sets upper/lower y
     axes = TRUE, 
     col = "grey95",
     main="Lemmon's Milkweed species occurrences in Arizona and Mexico",  # title
     sub="131 occurrences of Lemmon's Milkweed" # caption
)

# add the points for individual observation
points(x = lemmonData$longitude, 
       y = lemmonData$latitude, 
       col = "blue", 
       pch = 20, 
       cex = 0.75)

# draw a little box around the graph
box()
# stop mapping
dev.off()

##################
# SDM Mapping #

# Load files
source(file = "src/setup.R")

# ONLY RUN IF YOU WANT TO BREAK RSTUDIO

# query
lemmon <- occ(query='Asclepias lemmonii', from="gbif")
lemmonData <- lemmon$gbif$data$Asclepias_lemmonii

# only character data
lemmonData <- apply(lemmonData, 2, as.character)

# make .csv
write.csv(lemmonData, "data/lemmonii.csv")

# run it
source("src/lemmonii-sdm-single.R")
