# commonly used functions

query <- function() {
  lemmons <- occ(query='Asclepias lemmonii', from="gbif")
  lemmons <- lemmons$gbif$data$Asclepias_lemmonii
  return(lemmons)
}

clean <- function(df) {
  # no "ABSENT" data
  absent <- subset(x=df, occurrenceStatus != "PRESENT")
  df <- anti_join(df, absent)
  
  # no zero counts
  zero <- subset(x=df, individualCount==0)
  df <- anti_join(df, zero)
  df
  
  # remove missing longitude and latitude
  df <- df %>% filter(longitude != 'NA' | latitude != 'NA')
  return(df)
}

modelPrep <- function(df) {
  df <- apply(df, 2, as.character)
  write.csv(df, "data/lemmonii.csv")
  
  print("Prep complete")
}


occurenceMap <- function(lemmonData) {
  # max and min latitude
  max.lat <- ceiling(max(lemmonData$latitude))
  min.lat <- floor(min(lemmonData$latitude))
  
  # max and min longitude
  max.lon <- ceiling(max(lemmonData$longitude))
  min.lon <- floor(min(lemmonData$longitude))
  
  # save as jpg
  jpeg(file="output/occurence_map.jpg")
  
  # load spatial polygons
  data(wrld_simpl)
  
  # plot base map
  plot(wrld_simpl, 
       xlim = c(min.lon, max.lon), # sets upper/lower x
       ylim = c(min.lat, max.lat), # sets upper/lower y
       axes = TRUE, 
       col = "grey95",
       main="Lemmon's Milkweed species occurrences in Arizona and Mexico",  # title
       xlab = 'Longitude', ylab='Latitude',
       sub="131 occurrences of Lemmon's Milkweed" # caption
  )
  
  # add the points for individual observation
  points(x = lemmonData$longitude, 
         y = lemmonData$latitude, 
         col = "#ff455e", 
         pch = 20, 
         cex = 0.75)
  
  legend(x="bottomright", 
         legend=c("Occurence"), 
         col=c("#ff455e"), 
         pch=20, merge=FALSE )
  
  # draw a little box around the graph
  box()
  # stop mapping
  dev.off()
}