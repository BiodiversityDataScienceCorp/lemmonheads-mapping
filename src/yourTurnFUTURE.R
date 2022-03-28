# Thank you Jeff Oliver for your code (https://github.com/jcoliver/biodiversity-sdm-lesson)

# YOUR TURN!!!!

### 1. Run the setup code below 
# This installs libraries, and downloads climate data from bioclim (https://www.worldclim.org/data/bioclim.html)

source(file = "src/setup.R")


### 2. In the "src" directory, copy the contents of "run-sdm-single.R" 
# into a new file (still in 'src') called <species>-sdm-single.R (Rename <species> to your species)


### 3. In the "src" directory, copy the contents of "run-future-sdm-single.R" 
# into a new file (still in 'src') called <species>-sdm-single.R (Rename <species> to your species)


### 4. In BOTH new files, edit lines 14 & 15, changing MY_SPECIES to your species.


### 5. Below, write your spocc/gbif query: 

lemmons<-occ(query='Asclepias lemmonii', from="gbif")

# and then use the "$" notation to create a variable targeting the data set:

lemmonsData <- lemmons$gbif$data$Asclepias_lemmonii

### 6. Save to CSV

# first, ensure all data is character data
#df <- apply(df,2,as.character)
lemmonsData <- apply(lemmonsData, 2, as.character)

# use write.csv to write the data frame to 'data' directory
# make sure the file name matches what you indicated in step 3 on line 14
write.csv(lemmonsData, "data/lemmons.csv")


### 7. Use the source() command to run both files you created (one at a time)

source("src/lemmons-sdm-single.R")
source("src/lemmons-future-sdm-single.R")

#source("path/to/file.R")

#source("path/to/file.R")
