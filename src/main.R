# Data Retrieval and Initial Plotting
# Adam Schwarz, Katie Crocker, and Katelyn Osborne
# April 7th 2022

#####

# load packages and load climate data
source("src/setup.R")  

#####

# load functions from functions.R
source("src/functions.R")

#####

# query data

lemmonData <- query()

# clean data - only present, individual count above zero, and no missing coordinates

lemmonData <- clean(lemmonData)

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

#################
# SDM Mapping and Forecast Modeling #

modelPrep(lemmonData)

# run for SDM map
source("src/lemmonii-sdm-single.R")

# run after previous for forecast model
source("future-sdm-single.R")
