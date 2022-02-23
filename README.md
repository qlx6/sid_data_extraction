# sid_data_extraction
Extracting datasets from PEPFAR excel based SID tools

Background
This project is used to extract data from the SID assessment tools used for 2017, 2019 & 2021 into a standadized dataset
The output of this script is loaded into the LAST tool

Process Overview
> Reviewed tools and documented differences on crosswalk for each tab of the SID assessment tool & for each year (2017, 2019, 2021)
> Data manipulation techniques to convert the assessment tool data into a tidy dataset structure
> Modified crosswalk for R scripts to match raw extracts of the tool with crosswalk
> Improving the DQ by iteratively producing & re-producing all OU datasets, QC, cleaning


Main Challenges
> Different versions of the tool per assessment years 2017, 2019 & 2021.
> Variants of the SID tool within SID years posed DQ challenges with our process
> Data/data labels in text boxes – not machine readable with basic scripts except using OCR
> Inconsistency in SID tab/sheet names
> R Scripts references standard sheet names therefore adjustments need to be made when sheet names are not consistent
> Broken formulas & forms control links in SID tool
> The separate pieces of the dataset & tool variants posed a challenge to writing more efficient scripts within the timeline provided for deliverable
