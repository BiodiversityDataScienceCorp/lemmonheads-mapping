# Data Retrieval and Initial Plotting
# Adam Schwarz, Katie Crocker, and Katelyn Osborne
# April 7th 2022

################

# load packages and load climate data
source("src/setup.R")  

################

# load functions from functions.R
source("src/functions.R")

################

# query data

lemmonData <- query()

# clean data - only present, individual count above zero, and no missing coordinates

lemmonData <- clean(lemmonData)

################

# mapping #

occurenceMap(lemmonData)

#################
# SDM Mapping and Forecast Modeling #

modelPrep(lemmonData)

# run for SDM map
source("src/lemmonii-sdm-single.R")

# run for forecast model
source("src/future-sdm-single.R")
