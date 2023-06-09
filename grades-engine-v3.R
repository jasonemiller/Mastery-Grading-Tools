# gradebook analysis of data for mastery-based grading
# this file is the data processing back-end
# a user should not have to interact with this file at all
# this file is called by grades-master.R which passes parameter values

# v3: revisions on 24 May 2023
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

#library(leaflet)
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
  gradeorder<-c("N","E","S","I")
  out<-x[order(match(x,gradeorder))]
  out[[1]]
}
# NOTE:  The 'N' leads the order because once you earn an 'N' you 
# cannot retake the quiz.

# function that counts the number of occurrences of an input character (e.g., S, U, N)
char.countS<-function(x){
  unname(table(x)["S"][1])
}
char.countU<-function(x){
  unname(table(x)["I"][1])
}
char.countN<-function(x){
  unname(table(x)["N"][1])
}
char.countE<-function(x){
  unname(table(x)["E"][1])
}

# takes our progress frames and creates a cumulative count suitable for plotting
cumulative.frame<-function(x){
  tmp<-x
  for (i in 1:dim(x)[1]){
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
    rmarkdown::render(input = "./report scripting - Sp23/report_script.Rmd",
    #rmarkdown::render(input = "/Users/jason.miller/Dropbox (CSUCI)/TEACH - Present/_Fall 2020/M150-Fall2020/MATH 150/grades - F20/report scripting - F20/report_script.Rmd",
    #rmarkdown::render(input = "/Users/millerj/Dropbox (CSUCI)/TEACH - Present/_Spring 2020/MATH 150/grades/report scripting/report_script.Rmd", 
    #rmarkdown::render(input = "/Users/millerj/Dropbox (CSUCI)/TEACH - Present/_Spring 2020/MATH 150/grades/report scripting/Untitled.Rmd", 
              output_format = "pdf_document",
              output_file = paste("grade-report-", student, Sys.Date(), ".pdf", sep=''),
              output_dir = MG_output_dir)
  }
}


# creates report for the entire class
create.classreport<-function(x){
    # for HTML reports
    # rmarkdown::render('/Users/majerus/Desktop/R/auto_reporting/test/r_script.Rmd',  # file 2
    #                   output_file =  paste("report_", student, '_', Sys.Date(), ".pdf", sep=''), 
    #                   output_dir = '/Users/majerus/Desktop/R/auto_reporting/test/reports')
    # for PDF reports  
    rmarkdown::render(input = "./report scripting - Sp23/report_script-summary.Rmd",
                      #rmarkdown::render(input = "/Users/jason.miller/Dropbox (CSUCI)/TEACH - Present/_Fall 2020/M150-Fall2020/MATH 150/grades - F20/report scripting - F20/report_script.Rmd",
                      #rmarkdown::render(input = "/Users/millerj/Dropbox (CSUCI)/TEACH - Present/_Spring 2020/MATH 150/grades/report scripting/report_script.Rmd", 
                      #rmarkdown::render(input = "/Users/millerj/Dropbox (CSUCI)/TEACH - Present/_Spring 2020/MATH 150/grades/report scripting/Untitled.Rmd", 
                      output_format = "pdf_document",
                      output_file = paste("grade-report-ALL-", Sys.Date(), ".pdf", sep=''),
                      output_dir = MG_output_dir)
}

# creates a plot that shows a student's progress over time against the progress of their classmates
# inspired by process here:  https://socviz.co/refineplots.html
progress.plot<-function(x){ 
  p0<-ggplot(data=dcumprogressS.melt, aes(date,value, group=variable)) +
    theme_tufte(base_size = 11, base_family = "serif", ticks = TRUE)+
    scale_x_date(date_breaks = "1 week", date_labels = "%b, %W")
  p1<-p0 + 
    geom_smooth(data = subset(dcumprogressS.melt,variable != x), aes(date,value, group=variable),se=FALSE,color="grey70")
  p2<-p1 +
    geom_smooth(data = subset(dcumprogressS.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="red")
  p3<-p2 +
    geom_point(data = subset(dcumprogressS.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="black")
  p3 + xlab("Date")+
    ylab("Total Number of 'S' earned")+
    ggtitle("Your Progress Toward Course Mastery") +
    theme(plot.title = element_text(hjust = 0.5)) + # centers title
    theme(legend.position="top") +
    theme(axis.text.x = element_text(angle = 90))+
    geom_hline(yintercept=gradecutoffs["A"], linetype="dashed", color = "green") +
    geom_hline(yintercept=gradecutoffs["B"], linetype="dashed", color = "blue") +
    geom_hline(yintercept=gradecutoffs["C"], linetype="dashed", color = "orange") +
    geom_hline(yintercept=gradecutoffs["D"], linetype="dashed", color = "red")
  time<-format(Sys.time(), "%Y%m%d%H%M%S")
  output_plot = paste("progress-plot-", x, time, ".png", sep='')
  ggsave(output_plot)
  output_plot
}

# creates a plot that shows a student's unsuccessful attempts over time against the attempts of their classmates
attempts.plot<-function(x){ 
  p0<-ggplot(data=dcumprogressU.melt, aes(date,value, group=variable)) +
    theme_tufte(base_size = 11, base_family = "serif", ticks = TRUE)+
    scale_x_date(date_breaks = "1 week", date_labels = "%b, %W")
  p1<-p0 + 
    geom_smooth(data = subset(dcumprogressU.melt,variable != x), aes(date,value, group=variable),se=FALSE,color="grey70")
  p2<-p1 +
    geom_smooth(data = subset(dcumprogressU.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="yellow")
  p3<-p2 +
    geom_point(data = subset(dcumprogressU.melt,variable == x), aes(date,value, group=variable),se=FALSE,color="black")
  p3 + xlab("Date")+
    ylab("Total Number of 'I' earned")+
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
# grade.cutoffs<-c(35,27,20,11)
# plan to use the above vector to simplify modification of the function

# grade<-function(x){
#   x<-as.numeric(x)
#   if (x>=35) {
#     "A"} else { 
#       if (x>=27 & x<=34) {
#         "B"} else { 
#           if (x>=20 & x<=26) {
#             "C"} else { 
#               if (x>=11 & x<=19) {
#                 "D"} else {
#                   if (x<=10) {
#                     "F"}}
#             }
#         }
#     }
# }

# updated 221121 to call on a curve defined in 'master' file
grade<-function(x){
  x<-as.numeric(x)
  if (x>=gradecutoffs["A"]) {
    "A"} else { 
      if (x>=gradecutoffs["B"] & x<=gradecutoffs["A"]-1) {
        "B"} else { 
          if (x>=gradecutoffs["C"] & x<=gradecutoffs["B"]-1) {
            "C"} else { 
              if (x>=gradecutoffs["D"] & x<=gradecutoffs["C"]-1) {
                "D"} else {
                  if (x<=gradecutoffs["D"] ) {
                    "F"}}
            }
        }
    }
}

# ---------------------------------
# BODY


#----------------------------
# PROGRESS REPORT


progress_report<-dg
#dg$date<-as.Date(paste("2020/",substr(dg$date, start = 1, stop = 2),"/",substr(dg$date, start = 3, stop = 4),sep=""),origin="2022-01-01")
dg$date<-as.Date(paste("2020/",substr(dg$date, start = 1, stop = 2),"/",substr(dg$date, start = 3, stop = 4),sep=""))
# the assignment IDs consist of a learning target ID (two characters) concatenated with a 
# lowercase alpha to indicate a version of the assessment;
# these three command strip off the suffix from the assignment ID so the table focuses on the 
# learning targets.
progress_report$assID<-gsub("a1","",progress_report$assID)
progress_report$assID<-gsub("b1","",progress_report$assID)
progress_report$assID<-gsub("[abcde]","",progress_report$assID)
# replace the 'E' with an 'S' for counting masteries - this is an after-the-face fix

# 5/24/2023
# progress_report$grade<-gsub("E","S",progress_report$grade)

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
# PROBLEM:  If there's an LTQ that nobody has taken, the name of the LT gets replaced with a 'Not attempted'.
# This is not a preferred result.

#----------------------------
# TOTAL MARKS COUNTED

# the following counts the number of 'S', 'I', and 'N' grades in the mastery dataframe.
# for each mark, adds a row to the mastery data frame with the count for that column
counts<-data.frame(matrix(NA, nrow = 1, ncol = dim(mastery)[2]))
colnames(counts)<-colnames(mastery)

Ecounts<-summarise_each(mastery, funs(char.countE))
Scounts<-summarise_each(mastery, funs(char.countS))
Icounts<-summarise_each(mastery, funs(char.countU))
Ncounts<-summarise_each(mastery, funs(char.countN))
Ecounts[1]<-c("E")
Scounts[1]<-c("S")
Icounts[1]<-c("I")
Ncounts[1]<-c("N")
counts[1,]<-Ecounts
counts[2,]<-Scounts
counts[3,]<-Icounts
counts[4,]<-Ncounts
counts[is.na(counts)]<-0
rownames(counts)<-c("E_count","S_count","I_count","N_count")

# the counts dataframe contains counts of each type of mark the student earned

#----------------------------
# CUMULATIVE PROGRESS BY DATE

progress_calendar<-dg
# the assignment IDs consist of a learning target ID (two characters) concatenated with a 
# lowercase alpha to indicate a version of the assessment;
# these three command strip off the suffix from the assignment ID so the table focuses on the 
# learning targets.
progress_calendar$assID<-gsub("a1","",progress_report$assID)
progress_calendar$assID<-gsub("b1","",progress_report$assID)
progress_calendar$assID<-gsub("[abcde]","",progress_report$assID)

# 5/24/2023
# progress_calendar$grade<-gsub("E","S",progress_report$grade)

# PROBLEM: R is returning higher counts on the number of LTQs a student has matered.
# Looking at
# progress_calendar[which(progress_calendar$lname=='LNAME'),]
# for students who had this discrepancy reveals that they earned more than one 'S'
# on at least one LTQ.  TASK:  eliminate this double-counting

# PROGRESS frames
# - row for each date
# - dataframes whose entries are counts of 'S', one whose entries are counts 
#   of 'U', and one whose entries are 'N'
# - dataframes whose entries are cumulative counts of 'S', 'I', and 'N' respectively
# ----- success attempts ----
dprogressS<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countS)))
dprogressS <- dprogressS[is.na(dprogressS$date)==FALSE,]
dprogressS <- arrange(dprogressS,date)
dcumprogressS<-cumulative.frame(dprogressS)
# ---- exemplary work ----
dprogressE<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countE)))
dprogressE <- dprogressE[is.na(dprogressE$date)==FALSE,]
dprogressE <- arrange(dprogressE,date)
dcumprogressE<-cumulative.frame(dprogressE)
# ---- unsuccessful attempts ----
dprogressU<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countU)))
dprogressU <- dprogressU[is.na(dprogressU$date)==FALSE,]
dprogressU <- arrange(dprogressU,date)
dcumprogressU<-cumulative.frame(dprogressU)
# ---- 'no evidence' attempts ----
dprogressN<-as.data.frame(pivot_wider(progress_calendar,id_cols=date,names_from=lname,values_from=grade,values_fn=list(grade=char.countN)))
dprogressN <- dprogressN[is.na(dprogressN$date)==FALSE,]
dprogressN <- arrange(dprogressN,date)
dcumprogressN<-cumulative.frame(dprogressN)


#----------------------------
# GENERATE PLOTS

# PLOTS of cumulative progress
# - started with http://www.sthda.com/english/wiki/ggplot2-line-plot-quick-start-guide-r-software-and-data-visualization
# - need to figure out how to plot multiple curves on an axis, min curve, max curve, horizontal lines for grades, include future dates
# NOTE: this hint from stackoverflow concerning the 'melt' function will help with plotting (grouping)
# https://stackoverflow.com/questions/27998147/ggplot-with-data-frame-columns
dcumprogressS.melt<-melt(dcumprogressS,id.vars="date")
dcumprogressU.melt<-melt(dcumprogressU,id.vars="date")

# TESTING:  the following commands build a plot that shows student progress toward mastery
# progress.plot("lname")
# attempts.plot("lname")
# single.plot("lname")

#----------------------------
# PREP FOR REPORT GENERATION

# create a list of students with information to be reported
studentlist<-unique(colnames(mastery))[2:length(unique(colnames(mastery)))]
