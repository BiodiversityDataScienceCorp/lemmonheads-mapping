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