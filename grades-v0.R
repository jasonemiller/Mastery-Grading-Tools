# gradebook processing for mastery-based grading
# INPUT: grade.csv (described below) 
# As a student takes a check-out quiz, their results are added to the CSV file
# This script:
#  - processes those results into a summary of what learning targets the student has mastered

# IN DEVELOPMENT This script will:
#  - 

# ---------------------------------
# Required libraries

library(readr)
library(tidyr)
library(tidyverse)
library(dplyr)
library(ggplot2)
library(ggthemes)
library(reshape2)
library(xtable)

library(leaflet)
library(DT)
library(stringr)
library(knitr)
library(markdown)
library(rmarkdown)

# ---------------------------------
# FUNCTIONS

# because a student can take an assessment for a single learning target multiple times, they may have 
# multiple grades associated to some learning target.  In assessing their progress in the course, we 
# want to know when they show satisfactory mastery of a learning target, so we need to be able to look
# at a list of grades and 'see' when a student masters a topic.  This function takes a list of grades,
# orders them from best (evidence of mastery) to worst (no evidence) and returns the highest grade in 
# the list.  If the student hasn't taken as assessment for a learning target, then they will have a
# 'NULL' recorded for it and this function will report 'Not attempted'.

# take an entry in the pivot_wider table and grab the best grade in the entry
# uses:  https://stackoverflow.com/questions/17031039/how-to-sort-a-character-vector-according-to-a-specific-order
best.grade<-function(x){
  #  if(is.null(x)) return("Not attempted")
  #  if(is.na(x)) return("Not attempted")
  gradeorder<-c("N","S","U")
  out<-x[order(match(x,gradeorder))]
  out[[1]]
}
# NOTE:  The 'N' leads the order because once you earn an 'N' you 
# cannot retake the quiz.

# function that counts the number of occurrances of an input character (e.g., S, U, N)
char.countS<-function(x){
  unname(table(x)["S"][1])
}
char.countU<-function(x){
  unname(table(x)["I"][1])
}
char.countN<-function(x){
  unname(table(x)["N"][1])
}

# takes our progress frames and creates a cumulative count suitable for plotting
cumulative.frame<-function(x){
  tmp<-x
  for (i in 1:dim(x)[1]){
# for (i in 2:dim(x)[1]){
      tmp[i,2:dim(x)[2]]<-colSums(x[1:i,2:dim(x)[2]],na.rm=TRUE)
  }
  tmp
}

# creates report for vector of student names
create.gradereports<-function(x){
  for (student in x){
    # for HTML reports
    # rmarkdown::render('/Users/majerus/Desktop/R/auto_reporting/test/r_script.Rmd',  # file 2
    #                   output_file =  paste("report_", student, '_', Sys.Date(), ".pdf", sep=''), 
    #                   output_dir = '/Users/majerus/Desktop/R/auto_reporting/test/reports')
    # for PDF reports  
    rmarkdown::render(input = "./report scripting - F20/report_script.Rmd",
    #rmarkdown::render(input = "/Users/jason.miller/Dropbox (CSUCI)/TEACH - Present/_Fall 2020/M150-Fall2020/MATH 150/grades - F20/report scripting - F20/report_script.Rmd",
    #rmarkdown::render(input = "/Users/millerj/Dropbox (CSUCI)/TEACH - Present/_Spring 2020/MATH 150/grades/report scripting/report_script.Rmd", 
                      #   rmarkdown::render(input = "/Users/millerj/Dropbox (CSUCI)/TEACH - Present/_Spring 2020/MATH 150/grades/report scripting/Untitled.Rmd", 
                      output_format = "pdf_document",
                      output_file = paste("grade-report-", student, Sys.Date(), ".pdf", sep=''),
                      output_dir = "../reports v17/")
  }
}

# creates a plot that shows a student's progress over time against the progress of their classmates
# inspired by process here:  https://socviz.co/refineplots.html
progress.plot<-function(x){ 
  p0<-ggplot(data=dcumprogressS.melt, aes(date,value, group=variable)) +
    theme_tufte(base_size = 11, base_family = "serif", ticks = TRUE)
  p1<-p0 + 
    geom_smooth(data = subset(dcumprogressS.melt,variable != x), aes(date,value, group=variable),se=FALSE,color="grey70")
  p2<-p1 +
    geom_smooth(data = subset(dcumprogressS.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="red")
  p3<-p2 +
    geom_point(data = subset(dcumprogressS.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="black")
  p3 + xlab("Date (mmdd format)")+
    ylab("Total Number of 'S' earned")+
    ggtitle("Your Progress Toward Course Mastery") +
    theme(plot.title = element_text(hjust = 0.5)) + # centers title
    theme(legend.position="top") +
    theme(axis.text.x = element_text(angle = 90))+
    geom_hline(yintercept=35, linetype="dashed", color = "green") +
    geom_hline(yintercept=27, linetype="dashed", color = "blue") +
    geom_hline(yintercept=20, linetype="dashed", color = "orange") +
    geom_hline(yintercept=11, linetype="dashed", color = "red")
  time<-format(Sys.time(), "%Y%m%d%H%M%S")
  output_plot = paste("progress-plot-", x, time, ".png", sep='')
  ggsave(output_plot)
  output_plot
}

# creates a plot that shows a student's unsuccessful attempts over time against the attempts of their classmates
attempts.plot<-function(x){ 
  p0<-ggplot(data=dcumprogressU.melt, aes(date,value, group=variable)) +
    theme_tufte(base_size = 11, base_family = "serif", ticks = TRUE)
  p1<-p0 + 
    geom_smooth(data = subset(dcumprogressU.melt,variable != x), aes(date,value, group=variable),se=FALSE,color="grey70")
  p2<-p1 +
    geom_smooth(data = subset(dcumprogressU.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="yellow")
  p3<-p2 +
    geom_point(data = subset(dcumprogressU.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="black")
  p3 + xlab("Date (mmdd format)")+
    ylab("Total Number of 'U' earned")+
    ggtitle("Your Attempts Toward Course Mastery") +
    theme(plot.title = element_text(hjust = 0.5)) + # centers title
    theme(legend.position="top") +
    theme(axis.text.x = element_text(angle = 90))
  time<-format(Sys.time(), "%Y%m%d%H%M%S")
  output_plot = paste("attempt-plot-", x, time, ".png", sep='')
  ggsave(output_plot)
  output_plot
}

#
# -------- DOES NOT WORK --------  200521
#
# trying:  https://stackoverflow.com/questions/21192002/how-to-combine-2-plots-ggplot-into-one-plot
# creates a plot that shows a student's unsuccessful attempts over time against the attempts of their classmates
single.plot<-function(x){ 
  p0<-ggplot()+
    theme_tufte(base_size = 11, base_family = "serif", ticks = TRUE)
  p1<-p0 +
    geom_point(data = subset(dcumprogressU.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="black") +
    geom_smooth(data = subset(dcumprogressU.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="yellow") +
    geom_point(data = subset(dcumprogressS.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="black") +
    geom_smooth(data = subset(dcumprogressS.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="red")
  p1 +
    xlab("Date (mmdd format)")+
    ylab("Total Number of 'S/U' earned")+
    ggtitle("Your Attempts Toward Course Mastery") +
    theme(plot.title = element_text(hjust = 0.5)) + # centers title
    theme(legend.position="top") +
    theme(axis.text.x = element_text(angle = 90))
  time<-format(Sys.time(), "%Y%m%d%H%M%S")
  output_plot = paste("work-plot-", x, time, ".png", sep='')
  ggsave(output_plot)
  output_plot
}

# assign grade according to cutoffs Spring 2020 M150
# grade.cutoffs<-c(18,15,12,9)
# plan to use the above vector to simplify modification of the function
grade<-function(x){
  x<-as.numeric(x)
  if (x>=35) {
    "A"} else { 
      if (x>=27 & x<=34) {
        "B"} else { 
          if (x>=20 & x<=26) {
            "C"} else { 
              if (x>=11 & x<=19) {
                "D"} else {
                  if (x<=10) {
                    "F"}}
            }
        }
    }
}

# ---------------------------------
# BODY

setwd("~/Dropbox (CSUCI)/TEACH - Present/_Fall 2020/MATH150-Fall2020/MATH 150/grades - F20")

# READ IN: the input file that contains grades
# - is CSV
# columns:  date (four digits), assignment ID (assID), name ID (lname), grade (grade)
# rows:  one row per learning outcome assessed

# raw input as a data.frame (d-grade)
#dg <- read_csv("../grades.csv")

dg <- read_csv("grades-M15001F20.csv",comment="%")
dg <- read_csv("grades-M15002F20.csv",comment="%")

#----------------------------
# PROGRESS REPORT

# We want the learning targets listed in order of the syllabus; this vector establishes that order
# NOTE:  this vector must be updated with new learning target IDs
#learningtargetorder<-c("F1","F2","F3","L1","L2","L3")
learningtargetorder<-c("F1","F2","F3","L1","L2","L3","L4","L5","D1","D2","D3","D4","D5")
#learningtargetorder<-c("F1","F2","F3","L1","L2","L3","L4","L5","D1","D2","D3","D4","D6","I1","I2","I3","I4","A2","A3","A4","A5")

# the assignment IDs consist of a learning target ID (two characters) concatenated with a 
# lowercase alpha to indicate a version of the assessment;
# this command strips off the suffix from the assignment ID so the table focuses on the 
# learning targets.
progress_report<-dg
progress_report$assID<-gsub("a1","",progress_report$assID)
progress_report$assID<-gsub("b1","",progress_report$assID)
progress_report$assID<-gsub("[abc]","",progress_report$assID)

# the data is pivoted so that it is organized by students and learning outcomes with best
# grades listed in the table
mastery<-as.data.frame(pivot_wider(progress_report,id_cols=assID,names_from=lname,values_from=grade,values_fn=list(grade=best.grade)))
mastery<-mastery[match(learningtargetorder, mastery$assID),]

# change the column name of 'assID' because it's too edgy
names(mastery)[names(mastery) == "assID"] <- "outcome"
# NOTE:  the above 'learningtargetorder' matching has the consequence of dropping the first day survey (FDS) record because
# its ID is not included in the ordering; this is OK
# Replace NA with "Not attempted (from https://stackoverflow.com/questions/34718771/r-change-na-values)
mastery[is.na(mastery)]<-"Not attempted"

#----------------------------
# CUMULATIVE PROGRESS

progress_calendar<-dg
# remove 'quiz version' indicator
progress_calendar$assID<-gsub("a1","",progress_report$assID)
progress_calendar$assID<-gsub("b1","",progress_report$assID)
progress_calendar$assID<-gsub("[abc]","",progress_report$assID)

# PROGRESS frames
# - dataframes whose entries are counts of 'S', one whose entries are counts of 'U', and one whose entries are 'N'
# - datagframes whose entries are cumulative counts of 'S', 'U', and 'N' respectively
dprogressS<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countS)))
dprogressS[is.na(dprogressS)]<-0
dprogressS <- arrange(dprogressS,date)
dcumprogressS<-cumulative.frame(dprogressS)
# ---- unsuccessful attempts ----
dprogressU<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countU)))
dprogressU[is.na(dprogressU)]<-0
dprogressU <- arrange(dprogressU,date)
dcumprogressU<-cumulative.frame(dprogressU)
# ---- total attempts ---- NOT USED
#  #dprogress<-dprogressS
#  #dprogress[,2:dim(dprogress)[2]]<-dprogressS[,2:dim(dprogress)[2]]+dprogressU[,2:dim(dprogress)[2]]
#  #dcumprogress<-cumulative.frame(dprogress)
# ---- 'no evidence' attempts ----
dprogressN<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countN)))
dprogressN[is.na(dprogressN)]<-0
dprogressN <- arrange(dprogressN,date)
dcumprogressN<-cumulative.frame(dprogressN)

# PLOTS of cumulative progress
# - started with http://www.sthda.com/english/wiki/ggplot2-line-plot-quick-start-guide-r-software-and-data-visualization
# - need to figure out how to plot multiple curves on an axis, min curve, max curve, horizontal lines for grades, include future dates

# NOTE: this hint from stackoverflow concerning the 'melt' function will help with plotting (grouping)
# https://stackoverflow.com/questions/27998147/ggplot-with-data-frame-columns
dcumprogressS.melt<-melt(dcumprogressS,id.vars="date")
dcumprogressU.melt<-melt(dcumprogressU,id.vars="date")

# the following commands build a plot that shows student progress toward mastery
progress.plot("johnson")
attempts.plot("johnson")
single.plot("johnson")

# # --------------------
# GENERATE REPORT:  
# from:  https://www.reed.edu/data-at-reed/software/R/markdown_multiple_reports.html
# NOTE:  the following block uses a secondary Rmarkdown file, report_script.Rmd, to generate a customized
# report for each student

# vector of all students in the class (for reporting)
# the first column contains learning target IDs, and we don't need to use that as a subject for any report
studentlist<-unique(colnames(mastery))[2:length(unique(colnames(mastery)))]

create.gradereports(studentlist)
# section 2
create.gradereports(c("amador","perkins","torres"))
create.gradereports(c("gonzalez"))
# section 1
create.gradereports(c("mendoza"))
