# Programming Assignment 3
# Coursera R Programming course Throug JHU
# Felix Barangan, MS, RN, MSl(ASCP)
# Plotting 30 -day Mortality Rates for heart Attack

30_day_Mortality_rates <- function(){

        outcome <- read.csv("outcome-of-care-measures.csv", colClasses = "character")

        ## Coerce to numeric
        outcome_11 <- as.numeric(outcome[,11])


       hist(outcome_11)
}
###############################
## This function will determine if you have a valid State code
function(StateID){

        # if state ID is in the list of State ID in the state.abb
        # then save it as "validStateID
        if (StateID %in% state.abb) {
                validStateID <- StateID
                print(validStateID)
        }
        else{
                cat("Please enter a valid 2 letter State ID")

        }
}



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

# This is how you will sord when you find the selected columns
orderdata <- selectedColumn[order(decreasing = FALSE, selectedColumn[,2]),]

