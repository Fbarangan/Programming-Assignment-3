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
###############################
## This function will determine if you have a valid State code
validState <- function(StateID = "KY"){

        StateMatrix <- as.matrix(state.abb)
        colnames(StateMatrix) <- c("State")

        desiredState <- as.matrix((state.abb[match(StateID, state.abb)]))
        colnames(desiredState) <- c("State")



        print(desiredState)
        desiredState <<- desiredState


}
###############################
# Start Function : Outcome: sorted
# This will order by outcome (column)
SortOrderByOutcome <- function(column){
orderOutcome <- outcome[order(outcome[,column]),]

}
######################################
### Using dplyr function
### selecting  desired column from the main data - outcome
selectOutcome <-  function(desired_File, desired_Columns = c(1:10)){
         selectedColumn  <-  head(select (desired_File, desired_Columns))
         selectedColumn <<- selectedColumn
        print(selectedColumn)
        class(selectedColumn)
}
##########################################

