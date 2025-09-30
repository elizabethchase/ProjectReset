# ProjectReset
This repository houses code used to conduct the Project Reset analysis from Chase, Bushway, Saunders-Medina, and Burgette (2025+). The data underlying this analysis come from the Criminal Justice Administrative Records System (CJARS; https://cjars.org). These data cannot be shared, and so it is not possible to run any of the code in this repository. We provide the code for review and reproducibility. 

The code workflow is:

- data_clean.Rmd: cleans the raw CJARS files and converts them into our analytic files, separately by state
- state_aggregate.Rmd: aggregates the analytic files across states:
- modeling.Rmd: fits reconviction prediction models on the analytic files and generates predictions from models
- produce_results.Rmd: calculates a variety of descriptive output and performance assessment

In addition, there are three other files:

- useful_local_functions.R: a function used to calculate differences between dates
- fullmodel_info.xlsx: an Excel spreadsheet that contains the coefficient estimates and baseline cumulative hazard for the Cox model we recommend using for reconviction prediction
- reducedmodel_info.xlsx: an Excel spreadsheet that contains the coefficient estimates and baseline cumulative hazard for the Cox model that is identical to the full model, but without incarceration and crime type predictors
