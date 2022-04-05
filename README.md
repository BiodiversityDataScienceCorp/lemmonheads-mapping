# Model for setting up README.md file


## Overview
Description of the purpose of the repository.

Make sure you provide a link to your [SSA.md](SSA.md)

Acknowledge borrowed code from  [https://github.com/jcoliver/biodiversity-sdm-lesson](https://github.com/jcoliver/biodiversity-sdm-lesson), with further details in the Structure section below.

## Dependencies
The following additional R packages are required (these will be installed by running the the setup script, `src/setup.R`):

(list packages below...you may want to test this out to ensure dependent packages are installed in src/setup.R )

+ package1
+ package2
+ package3
+ etc

## Structure
+ SSA.md: Species Status Assessment for (insert species here)
+ data
  + wc2-5: climate data at 2.5 minute resolution from [WorldClim](http://www.worldclim.org) (_note_: this folder is not under version control, but will be created by running the setup script (`scripts/setup.R`))
  + cmip5: forcast climate data at 2.5 minute resolution from [WorldClim](http://www.worldclim.org). These data were originally downloaded from the WorldClim website, but stored in the `.RData` format for ease of use. The data are for the year 2070, based on the GFDL-ESM2G model with an RCP of 4.5 CO<sub>2</sub>. For an examination of different forecast models, see [McSweeney et al. 2015](https://link.springer.com/article/10.1007/s00382-014-2418-8).
  + speciesDataSet.csv: data harvested from [GBIF](https://www.gbif.org/) for _Species name_. This dataset is not under version control, but will be harvested by running src/main.R.
+ output (contents are not under version control): 
+ src: directory containing R scripts for gathering occurrence data, running forecast models, and creating map outputs.
  + main.R: describe what main.R does!
  + list each additional file in src/, and give a brief description of its purpose 

## Running the code
Provide step-by-step instructions on how one would clone this repository, run the code, and replicate the output. You may want to provide instructions for running your repository on a local instance of RStudio, and for a user on rstudio.cloud (there may be subtle differences in getting started).

