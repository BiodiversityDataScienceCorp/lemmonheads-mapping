# Your Turn!!!
# Thank you Jeff Oliver for your code (https://github.com/jcoliver/biodiversity-sdm-lesson)

########################### 1. Run the setup code below ####################################
# This installs libraries, and downloads climate data from bioclim (https://www.worldclim.org/data/bioclim.html)

source(file = "src/setup.R")

############### 2. In the "src" directory, copy the contents of "run-sdm-single.R" ##############
# into a new file (still in 'src') called <species>-sdm-single.R (Rename <species> to your milkweed)



# 3. In this new file, edit lines 14 & 15, changing MY_SPECIES to your milkwood species.




# 4. Below, write your spocc/gbif query, 
# and then use the "$" notation to create a variable targeting the data set. 



################ 5. Save to CSV #####################

# first, ensure all data is character data
#df <- apply(df,2,as.character)


# use write.csv to write the data frame to 'data' directory
# make sure the file name matches what you indicated in step 3 on line 14



# 6. Use the source() command to run the file you created in step 2 ############




