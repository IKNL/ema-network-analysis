# network-comparisons.R (lag-1 versus lag-2 comparison)

# IMPORTANT! 
# Requires and assumes:
# the objects mlvar_temp and mlvar_temp2, as created in main-analysis.R

# Load required packages
library(dplyr)
library(mlVAR)

#-------------------------------------------------------------------------------
# Lag comparison
#-------------------------------------------------------------------------------

# --- Compare lag-1 vs lag-2 networks --- #
# Compare the fit of the temporal networks
# This test determines if setting the lags argument to 2 significantly improves 
# model fit compared to lags=1
mlVARcompare(mlvar_temp, mlvar_temp2)

# That's it. It extracts the AIC and BIC for each variable from each model
# Then compares these values and summarizes it with counts of which model was
# "best" across all variables
