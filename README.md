---
title: README - mastery gradebook R scripts
author: Jason E. Miller
date: 2020-12-29
---

This is a README document for the git repository containing scripts for Jason E. Miller's implementation of mastery grading in his Calculus courses.  Because there are many ways to implement mastery grading, these scripts will certainly need modifications if they are used to support other adaptations of mastery grading.

These scripts do the following:

* use a four-column CSV file to track (1) the date of an assessment (MMDD), (2) a unique identifier for an assessment (two base character with additional 'a', 'b', 'c', etc. to distinguish assessment versions), (3) a unique student identifier like last name, and (4) a symbol representing an evaluation of student work on the assessment.

* using a list of 'learningtargets', the script identifies which learning targets a student has mastered, which a student has not yet mastered, and which as student has not attempted

* the script, usign R markdown, also creates a PDF report of student progress toward course goals, listing ina table earned progress toward learning targets and providing two plots that show a student mastery progress and a students attempts at mastery; both plots put those plots in the context of their classmates' work.

This implementation of mastery grading uses three evaluation categories: satisfactory evidence of mastery (S), insufficient evidence of mastery (I), and no evidence of mastery (N).  A fourth evaluation, excellent evidence of mastery (E), is used but treated like an 'S' in the scripts.  (This is a bug, not a feature.)

## CSV of Grades

The CSV file has a very simple structure.  The first 11 rows of the sample file are shown here.  Note that the first four rows re commented out, and the R command that reads this file is set to recognize that.

```text
% date:  mmdd
% assID: short code representing an action (F1a, tkn)
% lname:  student last name or last name + initial; must be a unique ID
% grade: grade earned on assessment, or token increment
date,assID,lname,grade
1008,L2a,simpson,S
0903,F1a,simpson,I
0915,F2a1,simpson,I
0916,L1a,simpson,S
1023,D1a,simpson,I
```

The command in `grades-master-v1.R` that reads the grades in from this CSV file is

```R
dg <- read_csv("grades-sample.csv",comment="%")
```

Note the argument `comment="%"` tells the script to ignore the first four lines of the grade CSV.