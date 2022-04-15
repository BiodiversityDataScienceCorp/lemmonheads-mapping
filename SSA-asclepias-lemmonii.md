# **Host Plant Information for Monarch Species Status Assessment (Danaus Plexippus: Nymphalidae)**

## Authors: Adam Schwarz, Katelyn Osborne, and Katie Crocker

#### [Github Repository](https://github.com/BiodiversityDataScienceCorp/lemmonheads-mapping) and Zenodo Archive

## Species Name:

### Lemmon's Milkweed

## Species Taxonomy:

### *Asclepias Lemmonii*

## Species Synonym

### Biglead Milkweed, *Asclepias Chapalensis*

## Etymology:

The name *Asclepias* comes from the Greek God *Asklepios* who was the god of healing. The word *lemmonii* comes from American botanists, Sara (1836-1923) and John Lemmon (1832-1908), who focused their work in the Southwest.

## Species Description:

Lemmon's Milkweed is a species of perennial herb in the family Apocynaceae. They are native to the contiguous United States. Flowers bloom in white, pink, and green in July through October. They are generally recognized by their large, rounded leaves.

![Photo by Miz Makings](https://storage.idigbio.org/portals/seinet/arizona/Apocynaceae/201708/IMG_2399_-_Asclepias_lemmonii-_1503375324.jpg)

## Habitat Description:

Lemmon's milkweed is found at elevations ranging from 1200-2100 meters. It generally grows in open and dry areas including slopes and canyons. It's habitat ranges from southern Arizona to southwestern Mexico.

## Larval Host Information:

There are no studies specifically on what species Lemmon's milkweed is a larval host for. Generally, milkweed species are known to be larval hosts for monarch butterflies. This is not the only species they're a host for. Milkweeds are also larval hosts for other butterflies and moths such as Dogbane Tiger moth (Cycnia tenera) and the Queen Butterfly (Danaus gilippus).

## Data Sources

### [GBIF](https://www.gbif.org/species/3170287)

All data was sourced and quieried from GBIF for occurence and distribution modeling. The Global Biodiversitry Information Facility (GBIF) is a site that works to provide everyone open access to data. This data source was used because it compiled all of the occurence data we needed from multiple sources including iNaturalist and Arizona State University. The dataset was small enough where we did not add any query arguments.

### [WorldClim](https://www.worldclim.org/data/bioclim.html)

The climate data used came from WorldClim. This model takes into account 19 bioclimatic variables, including monthly temperatures and rainfall, to make accurate predicitions about future climate suitability for our species. This data is not in version control because the file sizes are too large. A list of used data is included in `data/worldClimVariables.csv`

### Data Cleaning Process

The data set queried from GBIF was checked to ensure it had all relevant information. This was done by looking for and removing incomplete longitude and latitude entries, entries labeled "Absent" in the occurence status column, and entries with an individual count of zero. We did not query for specific years, as the data set was small enough that this would significantly lower our data count.

## Species Occurrence Map

![Species Occurrence Map](https://raw.githubusercontent.com/BiodiversityDataScienceCorp/lemmonheads-mapping/main/output/occurence_map.jpg)

## Species Distribution Modeling

### SDM

Species Distribution Models (SDMs) are used to understand what environmental conditions are necessary for a species to survive. SDMs also provide information on potential areas that have suitable environments for a species.

### Methods

Our SDM was made using recorded species occurence data and environmental data. For each location where the species was documented, information on the environmental variables were considered. Using this information, the model visualizes suitable environments for our species.

![SDM](https://raw.githubusercontent.com/BiodiversityDataScienceCorp/lemmonheads-mapping/main/output/current-sdm-map.png)

## Species Distribution Forecast Estimation

### SDF

Species Distribution Forecasts (SDFs) use species distribution models and future climate forecasts to estimate where a species may be found in the future and what areas will have suitable environmental conditions for a species survival. With climate change affecting many environmental variables, SDFs are an important tool in understanding how a species' distribution may change in the future.

### Methods

Our SDF was made using recorded species occurrence data in conjunction with the previously mentioned environmental data and climate data from WorldClim. The software used climate forecasting to predict how a changing climate will impact environmental factors geographically. This allowed us to use the current habitat requirements of our species to estimate where these requirements will be met after climate changes have occurred. The final model visualizes areas of future suitability, allowing us to see where the species will likely exist in the future and how different this is from the current species distribution.

![SDF](https://raw.githubusercontent.com/BiodiversityDataScienceCorp/lemmonheads-mapping/main/output/lemmonii-single-current-future-sdm.jpg)

## Summary of Findings

Lemmonii milkweed are currently observed and recorded across what appears to be the West Sierra Madre Occidental mountain range of Mexico and the southwest corner of Arizona (specifically the Chiricahua Mountain Range and the Huachuca Mountain Range). Based on our climate indicators, we predict that the species will decrease in range and density throughout its distribution, especially in Arizona. Moreover, suitable regions will become increasingly isolated with large gaps in between. These areas will be where elevation is high enough to sustain the climate necessary for *lemmonii* growth. These factors are likely to create strain for migrating Monarch butterflies that rely on this milkweed species as a food source. 

## References:

### [GBIF](https://www.gbif.org/species/3170287)

### [NatureServe Explorer](https://explorer.natureserve.org/Taxon/ELEMENT_GLOBAL.2.131047/Asclepias_lemmonii)

### [SEINet](https://swbiodiversity.org/seinet/taxa/index.php?taxon=3763)

### [eol](https://eol.org/pages/586616)

### [USFWS](https://www.xerces.org/sites/default/files/2018-05/17-031_02_XercesSoc_Milkweeds-Conservation-Guide_web.pdf)
