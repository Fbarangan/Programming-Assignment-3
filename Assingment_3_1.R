# Programming Assignment 3
# Coursera R Programming course Throug JHU
# Felix Barangan, MS, RN, MSl(ASCP)
# Plotting 30 -day Mortality Rates for heart Attack

30_day_Mortality_rates <- function("outcome-of-care-measures.csv"){

        outcome <- read.csv("outcome-of-care-measures.csv", colclasses = "character")

        ## Coerce to numeric
        outcome_11 <- as.numeric(outcome[,11])


hist(outcome_11)
}
###############################
## This function will determine if you have a valid State code
validState <- function(StateID = State){
        desiredState <- state.abb[match(StateID, state.abb)]
        print(desiredState)
}
###############################

