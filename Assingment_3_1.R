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
validState <- function(StateID = c("KY")) {

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
# -End of function: validState
## This will valid if user enter correct outcome
validOutcome <- function(Outcome = "Heart Attack") {
        outcomeList <- list("Heart_Attack", "Pneumonia", "Heart_Failure")
        if (Outcome %in% outcomeList) {
                print(outcomeList)
        }
        else{
                cat("Please enter valid outcome.","\n","(","Heart Attack",","
                    , "Pneumonia",",", "Heart Failure",")" )
        }
}
# -End of function: validOutcome
# -Start of building the data
        outcome <- read.csv("outcome-of-care-measures.csv")
# Start Function : Outcome: sorted
# This will order by outcome (column)
SortOrderByOutcome <- function(column){
orderOutcome <- outcome[order(outcome[,column]),]

}
######################################
### selecting  desired column from the main data - outcome
### Removed all footnotes
selectOutcome <-  function(desired_File, desired_Columns = c(2,7,11:15,17:21,23:27,29:33,35:39,41:45)){
         selectedColumn  <-  select (desired_File, desired_Columns)
         selectedColumn <<- selectedColumn
        print(selectedColumn)
        class(selectedColumn)
}
## Change data.frame into tble tbl_df
selectedColumn <- tbl_df (selectedColumn)

# Change a column into integer
as.integer (selectedColumn$Heart_Attack)


#########################################
# Renaming columns

colnames(selectedColumn)[3] "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
colnames(selectedColumn)[4] "Comparison.to.U.S..Rate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
colnames(selectedColumn)[5] "Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
colnames(selectedColumn)[6] "Upper.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
colnames(selectedColumn)[7] "Number.of.Patients...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Attack"
colnames(selectedColumn)[8] "Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
colnames(selectedColumn)[9] "Comparison.to.U.S..Rate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
colnames(selectedColumn)[10] "Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
colnames(selectedColumn)[11] "Upper.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
colnames(selectedColumn)[12] "Number.of.Patients...Hospital.30.Day.Death..Mortality..Rates.from.Heart.Failure"
colnames(selectedColumn)[13] "Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
colnames(selectedColumn)[14] "Comparison.to.U.S..Rate...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
colnames(selectedColumn)[15] "Lower.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
colnames(selectedColumn)[16] "Upper.Mortality.Estimate...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
colnames(selectedColumn)[17] "Number.of.Patients...Hospital.30.Day.Death..Mortality..Rates.from.Pneumonia"
colnames(selectedColumn)[18] "Hospital.30.Day.Readmission.Rates.from.Heart.Attack"
colnames(selectedColumn)[19] "Comparison.to.U.S..Rate...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"
colnames(selectedColumn)[20] "Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"
colnames(selectedColumn)[21] "Upper.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"
colnames(selectedColumn)[22] "Number.of.Patients...Hospital.30.Day.Readmission.Rates.from.Heart.Attack"
colnames(selectedColumn)[23] "Hospital.30.Day.Readmission.Rates.from.Heart.Failure"
colnames(selectedColumn)[24] "Comparison.to.U.S..Rate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"
colnames(selectedColumn)[25] "Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"
colnames(selectedColumn)[26] "Upper.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"
colnames(selectedColumn)[27] "Number.of.Patients...Hospital.30.Day.Readmission.Rates.from.Heart.Failure"
colnames(selectedColumn)[28] "Hospital.30.Day.Readmission.Rates.from.Pneumonia"
colnames(selectedColumn)[29] "Comparison.to.U.S..Rate...Hospital.30.Day.Readmission.Rates.from.Pneumonia"
colnames(selectedColumn)[30] "Lower.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Pneumonia"
colnames(selectedColumn)[31] "Upper.Readmission.Estimate...Hospital.30.Day.Readmission.Rates.from.Pneumonia"
colnames(selectedColumn)[32] "Number.of.Patients...Hospital.30.Day.Readmission.Rates.from.Pneumonia"

# Filter by Hospital Name
filter(selectedColumn, Hospital_Name == "ST LUKE'S HOSPITAL AT THE VINTAGE, LLC")

# Selecting state
state_Select <- filter(selectedColumn, State == "TX" )

# Arrange file after State selection


# This is how you will sord when you find the selected columns
orderdata <- selectedColumn[order(decreasing = FALSE, selectedColumn[,2]),]

