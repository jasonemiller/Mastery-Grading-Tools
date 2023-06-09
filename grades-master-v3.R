# gradebook processing for mastery-based grading
# this file is the operational front-end
# use this file to 
# - set parameters
# - load data
# - initiate the analysis of gradebook data by grades-engine-v1.R
# - generate reports (using report_script.Rmd)

# vs on 24 May 2023
library(readr)

##----------- PARAMETERS --------------------------------------------

# ----------- SET WORKING DIRECTORY -----------
#
# FOR:  setting working directory for script; should contain these scripts
setwd("/Users/jason.miller/Dropbox (CSUCI)/MEETINGS Off-campus/230609 Ungrading Conference/grades/")

# ----------- SET OUTPUT DIRECTORY FOR REPORTS -----------
#
# FOR:  create.gradereports function; PATH to directory into which reports should be written
MG_output_dir = "/Users/jason.miller/Dropbox (CSUCI)/MEETINGS Off-campus/230609 Ungrading Conference/grades/reports/"

# ----------- SET LEARNING TARGET ORDER -----------
#
# FOR:  establishing order of LTs in the course
# We want the learning targets listed in order of the syllabus; this vector establishes that order
# NOTE:  this vector must be updated with new learning target IDs
#learningtargetorder<-c("F1","F2","F3","L1","L2","L3","L4","L5","D1","D2","D3","D4","D5","D6","D7","A1","A2","A3","A4","A5","A6","I1","I2","I3","I4","I5","I6")
learningtargetorder<-c("F1","F2","F3","L1","L2","L3","L4","L5","D1","D2","D3","D4","D5","D6","A1","A2","A3","A4","A5","I1","I2","I4","I5")

# -------- establish grade cutoffs ----------

# Grade cut-offs for the course.  Used in the 'engine' script for plotting and assigning grades.

#gradecutoffs<-c("A"=35,"B"=27,"C"=20,"D"=11,"F"=9)
#gradecutoffs<-c("A"=25,"B"=21,"C"=16,"D"=10,"F"=9)
#gradecutoffs<-c("A"=30,"B"=24,"C"=18,"D"=10,"F"=0) # 230308
gradecutoffs<-c("A"=23,"B"=17,"C"=12,"D"=8,"F"=0) # 230308
#  gradecutoffs["A"]



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
# NOTE (221119): include a 'nobody' student with an 'N' grade for each LTQ; this will make each LTQ 
# show up in the report summary table (as opposed to being obscured by a 'not attempted' label)

# FOR:  loading raw grade data as a data.frame (`dg` represents `d-grade`)
dg <- read_csv("grades.csv",comment="%")

##-----------------------------------------------------------------------------


# ----------- PROCESS DATA -----------
#
source("./grades-engine-v3.R", echo=TRUE)

# ----------- GENERATE GRADE REPORTS -----------
#
# from:  https://www.reed.edu/data-at-reed/software/R/markdown_multiple_reports.html
# NOTE:  the following block uses a secondary Rmarkdown file, report_script.Rmd, 
#   to generate a customized report for each student

#create.gradereports(studentlist)
#create.gradereports(c("vega","boberg","booth","vangelder","thomas","acosta","lologo"))
#create.gradereports(c("python"))
create.gradereports(c("biden","clintonh","clintonw","klobuchar","carter"))
create.classreport()

# --- CUSTOM REPORT SETS ---
# section 2
#create.gradereports(c("miller","bynder","tucker","ramirezj","colindres","langness","meyer","almaraz","castellanos","mansour","ceja","arias"))
#create.gradereports(c("bynder","vega"))

