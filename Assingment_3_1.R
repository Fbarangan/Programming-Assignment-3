# Programming Assignment 3
# Coursera R Programming course Throug JHU
# Felix Barangan, MS, RN, MSl(ASCP)
# Plotting 30 -day Mortality Rates for heart Attack

30_day_Mortality_rates <- function(){

        outcome <- read.csv("outcome-of-care-measures.csv")
        outcome <- as.integer (outcome[,11])

        ## Coerce to numeric
        outcome <- as.numeric(outcome[,11])
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
selectOutcome <-  function(desired_File, desired_Columns = c(2,7,11, 19)){
         selectedColumn  <-  select (desired_File, desired_Columns)
         selectedColumn <<- selectedColumn
        print(selectedColumn)
        class(selectedColumn)
}
## Change data.frame into tble tbl_df
selectedColumn <- tbl_df (selectedColumn)

# Change a column into integer
as.integer (selectedColumn$Heart_Attack)


#########################################     2, 7,11 , 19
# Renaming columns
colnames(selectedColumn)[1] = "Hospital_Name"
colnames(selectedColumn)[3] = "Heart_Attack"
colnames(selectedColumn)[4] = "Heart_Failure"

# Filter by Hospital Name
filter(selectedColumn, Hospital_Name == "ST LUKE'S HOSPITAL AT THE VINTAGE, LLC")

# Selecting state
state_Select <- filter(selectedColumn, State == "TX" )

# Arrange file after State selection


# This is how you will sord when you find the selected columns
orderdata <- selectedColumn[order(decreasing = FALSE, selectedColumn[,2]),]

