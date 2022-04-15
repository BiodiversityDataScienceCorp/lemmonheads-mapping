# **Host Plant Information for Monarch Species Status Assessment (Danaus Plexippus: Nymphalidae)**

## Authors: Adam Schwarz, Katelyn Osborne, and Katie Crocker

#### [Github Repository](https://github.com/BiodiversityDataScienceCorp/lemmonheads-mapping) and Zenodo Archive

## Species Name:

### Lemmon's Milkweed

## Species Taxonomy:

### *Asclepias Lemmonii*

## Species Synonym

### Bigleaf Milkweed, *Asclepias Chapalensis*

## Etymology:

The name *Asclepias* comes from the Greek God *Asklepios* who was the god of healing. The word *lemmonii* comes from American botanists, Sara (1836-1923) and John Lemmon (1832-1908), who focused their work in the Southwest<sup>1</sup>.

## Species Description:

Lemmon's Milkweed is a species of perennial herb in the family Apocynaceae. They are native to the contiguous United States. Flowers bloom in white, pink, and green in July through October<sup>2</sup>. They are generally recognized by their large, rounded leaves, and can grow up to a height of 5 feet<sup>3</sup>.

![Photo by Miz Makings](https://storage.idigbio.org/portals/seinet/arizona/Apocynaceae/201708/IMG_2399_-_Asclepias_lemmonii-_1503375324.jpg)

## Habitat Description:

Lemmon's milkweed is found at elevations ranging from 1200-2100 meters. It generally grows in open and dry areas including slopes, canyons, and woodlands. Its habitat ranges from southern Arizona to southwestern Mexico<sup>4</sup>.

## Larval Host Information:

There are no studies specifically on what species Lemmon's milkweed is a larval host for. Generally, milkweed species are known to be larval hosts for monarch butterflies. This is not the only species they're a host for. Milkweeds are also larval hosts for other butterflies and moths such as Dogbane Tiger moth (Cycnia tenera) and the Queen Butterfly (Danaus gilippus)<sup>5</sup>.

## Conservation Efforts:
There is no evidence of past conservation efforts specifically focused on this species of milkweed. From species occurrence maps, it can be seen that this species is located primarily in natural regions away from urbanization in Arizona. Thus, this is not a species likely to be planted by citizens or botanical gardens in their effort to preserve milkweed species for monarch butterflies. 

## Data Sources

### [GBIF](https://www.gbif.org/species/3170287)

All data was sourced and queried from GBIF for occurence and distribution modeling. The Global Biodiversity Information Facility (GBIF) is a site that works to provide everyone open access to data. This data source was used because it compiled all of the occurrence data we needed from multiple sources including iNaturalist and Arizona State University<sup>6</sup>. The dataset was small enough where we did not add any query arguments.

### [WorldClim](https://www.worldclim.org/data/bioclim.html)

The climate data used came from WorldClim. This model takes into account 19 bioclimatic variables, including monthly temperatures and rainfall, to make accurate predictions about future climate suitability for our species. This data is not in version control because the file sizes are too large. A list of used data is included in `data/worldClimVariables.csv`

### Data Cleaning Process

The data set queried from GBIF was checked to ensure it had all relevant information. This was done by looking for and removing incomplete longitude and latitude entries, entries labeled "Absent" in the occurrence status column, and entries with an individual count of zero. We did not query for specific years, as the data set was small enough that this would significantly lower our data count.

## Species Occurrence Map

![Species Occurrence Map](https://raw.githubusercontent.com/BiodiversityDataScienceCorp/lemmonheads-mapping/main/output/occurence_map.jpg)

## Species Distribution Modeling

### SDM

Species Distribution Models (SDMs) are used to understand what environmental conditions are necessary for a species to survive. SDMs also provide information on potential areas that have suitable environments for a species.

### Methods

Our SDM was made using recorded species occurrence data and environmental data. For each location where the species was documented, information on the environmental variables were considered. Using this information, the model visualizes suitable environments for our species.

![SDM](https://raw.githubusercontent.com/BiodiversityDataScienceCorp/lemmonheads-mapping/main/output/current-sdm-map.png)

## Species Distribution Forecast Estimation

### SDF

Species Distribution Forecasts (SDFs) use species distribution models and future climate forecasts to estimate where a species may be found in the future and what areas will have suitable environmental conditions for a species survival. With climate change affecting many environmental variables, SDFs are an important tool in understanding how a species' distribution may change in the future.

### Methods

Our SDF was made using recorded species occurrence data in conjunction with the previously mentioned environmental data and climate data from WorldClim. The software used climate forecasting to predict how a changing climate will impact environmental factors geographically. This allowed us to use the current habitat requirements of our species to estimate where these requirements will be met after climate changes have occurred. The final model visualizes areas of future suitability, allowing us to see where the species will likely exist in the future and how different this is from the current species distribution.

![SDF](https://raw.githubusercontent.com/BiodiversityDataScienceCorp/lemmonheads-mapping/main/output/lemmonii-single-current-future-sdm.jpg)

## Summary of Findings

Lemmonii milkweed are currently observed and recorded across what appears to be the West Sierra Madre Occidental mountain range of Mexico and the southwest corner of Arizona (specifically the Chiricahua Mountain Range and the Huachuca Mountain Range). Based on our climate indicators, we predict that the species will decrease in range and density throughout its distribution, especially in Arizona. Moreover, suitable regions will become increasingly isolated with large gaps in between. These areas will be where elevation is high enough to sustain the climate necessary for *lemmonii* growth. These factors are likely to create strain for migrating Monarch butterflies that rely on this milkweed species as a food source. This change in the species distribution is likely to create strain for migrating Monarch butterflies that rely on this milkweed species as a nectar food source, especially on their return journey from migration. 

## Recommendations
In monarch butterfly conservation efforts, we do not believe that the Lemmon’s milkweed should be considered a priority when compared to other milkweed species. Due to its already small occurrence count and its shrinking habitat range, the Lemmon’s milkweed will likely be unable to sustainably support migrating monarchs. However, if there is a conservation effort focused on this species, priority should be given to preservation of its current habitat, and the preservation of its forecasted habitat range. Given that the Lemmon’s milkweed’s range is forecasted to move farther south into Mexico, a conservation effort would be more effective in Mexico than in Arizona.  



## References:

### 1. [SEINet](https://swbiodiversity.org/seinet/taxa/index.php?taxon=3763)

### 2. [eol](https://eol.org/pages/586616)

### 3. [NatureServe Explorer](https://explorer.natureserve.org/Taxon/ELEMENT_GLOBAL.2.131047/Asclepias_lemmonii)

### 4. [Exerces](https://www.xerces.org/sites/default/files/2018-05/17-031_02_XercesSoc_Milkweeds-Conservation-Guide_web.pdf)

### 5. [GBIF](https://www.gbif.org/species/3170287)

### 6. [GBIF](https://www.gbif.org/species/3170287)

