# Lemmonhead's Repository

## Overview

This repository draws on data from GBIF to create distribution models of the monarch butterfly host species, *Asclepias Lemmonii* (Lemmon's Milkweed). The code creates an occurence map, species distrubition model, and climate forecast model for this species of milkweed.

Link to [Species Status Assessment](https://github.com/BiodiversityDataScienceCorp/lemmonheads-mapping/blob/main/SSA-asclepias-lemmonii.md).

Thank you to Jeff Oliver from whom we have [borrowed code](https://github.com/jcoliver/biodiversity-sdm-lesson).

## Dependencies

The following additional R packages are required (these will be installed by running the the setup script, `src/setup.R`):

-   raster
-   sp
-   dismo
-   maptools
-   spocc
-   rgdal
-   sf
-   tidyverse
-   maps

## Structure

-   SSA.md: Species Status Assessment for *Asclepias Lemmonii*
-   data: directory containing necessary data
    -   wc2-5: climate data at 2.5 minute resolution from [WorldClim](http://www.worldclim.org) (*note*: this folder is not under version control, but will be created by running the setup script (`scripts/setup.R`))
    -   cmip5: forcast climate data at 2.5 minute resolution from [WorldClim](http://www.worldclim.org). These data were originally downloaded from the WorldClim website, but stored in the `.RData` format for ease of use. The data are for the year 2070, based on the GFDL-ESM2G model with an RCP of 4.5 CO<sub>2</sub>. For an examination of different forecast models, see [McSweeney et al. 2015](https://link.springer.com/article/10.1007/s00382-014-2418-8).
    -   lemmonii.csv: data harvested from [GBIF](https://www.gbif.org/) for *Asclepias Lemmonii*. This dataset is not under version control, but will be harvested by running src/main.R.
    -   worldClimVariables.csv: list of climate data used from WorldClim
-   output: directory containing image outputs
    - current-sdm-map.png: SDM map
    - lemmonii-single-current-future-sdm.jpg: SDM with both current and future data
    - lemmonii-single-prediction-country-borders.jpg: SDF with country borders
    - lemmonii-single-predicition-county-borders.jpg: SDF with county borders
    - lemmonii-single-predicition-state-borders.jpg: SDF with state broders
    - occurence_map.jpg: occurence map 
-   src: directory containing R scripts for gathering occurrence data, running forecast models, and creating map outputs.
    -   main.R: creates an occurence map, SDM, and SDF
    -   functions.R: contains commonly used functions
    -   setup.R: load packages and run setup for creating SDMs and SDFs
    -   sdm-functions.R: required functions for creating SDMs
    -   lemmonii-sdm-single.R: create an SDM
    -   future-sdm-single.R: create an SDF

## Running the code

1.  Open main.R
2.  Run the following lines in order to run the necessary setup

-   `soucre("src/setup.R")`
-   `source("src/functions.R")`

3.  Run the following lines in order to query and clean the data

-   `lemmonData <- query()`
-   `lemmonData <- clean(lemmonData)`

4.  To create an occurence map, run `occurenceMap(lemmonData)`
5.  To create either an SDM or an SDF, run `modelPrep(lemmonData)`

-   For an SDM or SDF, run `source("src/lemmonii-sdm-single.R")`
-   For an SDF, run `source("src/future-sdm-single.R")` after you have ran the previous line
