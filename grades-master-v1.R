# gradebook processing for mastery-based grading
# this file is the operational front-end
# use this file to 
# - set parameters
# - load data
# - initiate the analysis of gradebook data by grades-engine-v1.R
# - generate reports (using report_script.Rmd)

##----------- PARAMETERS --------------------------------------------

# ----------- SET WORKING DIRECTORY -----------
#
# FOR:  setting working directory for script; should contain these scripts
setwd("PATH/TO/WORKING/DIRECTORY")

# ----------- SET OUTPUT DIRECTORY FOR REPORTS -----------
#
# FOR:  create.gradereports function; PATH to directory into which reports should be written
MG_output_dir = "PATH/TO/REPORT/DIRECTORY"

# ----------- SET LEARNING TARGET ORDER -----------
#
# FOR:  establishing order of LTs in the course
# We want the learning targets listed in order of the syllabus; this vector establishes that order
# NOTE:  this vector must be updated with new learning target IDs
learningtargetorder<-c("F1","F2","F3","L1","L2","L3","L4","L5","D1","D2","D3","D4","D5","D6","D7","A1","A2","A3","A4","A5","I1","I2","I3","I5")

# ----------- LOAD GRADEBOOK DATA -----------
#
# FOR: the input CSV file file that contains grades
# FORMATTING:
# four columns:  
# - date (four digits), 
# - assignment ID (assID), 
# - unique name ID (lname), 
# - grade (grade)
# rows:  one row per learning outcome assessed

# FOR:  loading raw grade data as a data.frame (`dg` represents `d-grade`)
dg <- read_csv("grades-sample.csv",comment="%")

##-----------------------------------------------------------------------------


# ----------- PROCESS DATA -----------
#
source("./grades-engine-v1.R", echo=TRUE)

# ----------- GENERATE GRADE REPORTS -----------
#
# from:  https://www.reed.edu/data-at-reed/software/R/markdown_multiple_reports.html
# NOTE:  the following block uses a secondary Rmarkdown file, report_script.Rmd, 
#   to generate a customized report for each student

create.gradereports(studentlist)

# --- CUSTOM REPORT SETS ---
create.gradereports(c("bob","scratchy"))

