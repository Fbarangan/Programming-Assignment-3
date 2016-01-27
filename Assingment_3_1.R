# Programming Assignment 3
# Coursera R Programming course Throug JHU
# Felix Barangan, MS, RN, MSl(ASCP)
# Plotting 30 -day Mortality Rates for heart Attack

30_day_Mortality_rates <- function("outcome-of-care-measures.csv"){

        outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

        ## Coerce to numeric
        outcome_11 <- as.numeric(outcome[,11])


hist(outcome_11)
}
