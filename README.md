# Credits
This project is derived from the Human Activity Recognition Using Smartphones Dataset by 

Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto.
Smartlab - Non Linear Complex Systems Laboratory
DITEN - Universit‡ degli Studi di Genova.
Via Opera Pia 11A, I-16145, Genoa, Italy.
activityrecognition@smartlab.ws
www.smartlab.ws

# Description
This repository contains scripts to process Human Activity Data.  It contains the following files:

Filename       | Purpose
---------------|----------
README.md      | This file
CodeBook.md    | Describes the data used and the changes made
run_analysis.R | Script for R that downloads the data set and processes it.

This data has been modified from the original raw form provided by the authors.  The following modifications have been made:

* Test and training data were combined
* Measurements other than mean and standard deviation have been removed
* The data has been combined into a single file
* Data has been aggregated (using the mean) by Subject and Activity
* Data has been de-normalized as much as possible
* The resulting processed data has been written to a single file, tidydata.txt