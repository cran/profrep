## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(profrep)

## -----------------------------------------------------------------------------
synthetic_data <- profrep::synthetic_data_four_point
print(synthetic_data)

## -----------------------------------------------------------------------------
pr_score_df <- profrep::profrep(df=synthetic_data, n_timepoints=4)

## -----------------------------------------------------------------------------
print(pr_score_df)

