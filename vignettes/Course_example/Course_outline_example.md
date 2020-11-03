---
title: "Introduction to R for Population dynamics"
author: "Anthony Davidson"
date: "Build from Ben Statons R book with contributions by Henry Hershey"
site: bookdown::bookdown_site
output: bookdown::gitbook
documentclass: book
bibliography: [book.bib, packages.bib]
biblio-style: apalike
link-citations: true
linkcolor: "blue"
urlcolor: "blue"
github-repo: davan690
description: "This is a first course in R programming for natural resource scientists and ecologists. It was developed by and has been primarily instructed at Auburn University."
---

# Overview{-#overview}

To begin with this model defines the life cycle of a species, then extended this to estimate population size and growth rate over a projected time frame and then analysis the elasticity and sensitivity of a matrix population model. I have done this with examples from my research on southern right whales and invasive species in NZ.

## What is Covered? {-}

The book is composed of six chapters intended to cover a suite of topics in introductory R programming. In general, the material builds in complexity from chapter to chapter and earlier chapters can be seen as prerequisites for later chapters. 

*  **Chapter \@ref(ch1)** covers the basics of working in R through RStudio, including the basics of the R coding language and environment.
*  **Chapter \@ref(ch2)** covers the basics of plotting using the base R graphics functionality. 
*  **Chapter \@ref(ch3)** covers the basics of fitting statistical models using built-in functionality for generalized linear models as well as non-linear models.   
*  **Chapter \@ref(ch4)** covers the basics of simulation modeling in R. 
*  **Chapter \@ref(ch5)** covers the basics of the `{dplyr}` and `{reshape2}` packages for manipulating and summarizing large data sets using highly readable code.
*  **Chapter \@ref(ch6)** covers the basics of producing maps and performing spatial analysis in R. _This chapter was contributed by Henry Hershey_

## External Resources

`r if(knitr::is_html_output()) '<a href="https://github.com/bstaton1/au-r-workshop/"><img src="img/cover_image.png" width="250" height="375" alt="Cover image" align="right" style="margin: 0 1em 0 1em" /></a>' `This book is an extention of several gitbooks that are intended to be a first course in R programming for a range of different professionals. It is by no means comprehensive (no book about R ever could be), but instead attempts to introduce the main topics and develop the skills needed to get a beginner up and running with applying R to their own work in the context of population dynamics. Some of the courses were intended to be a companion to in-person workshop sessions. Although the examples shown have a natural resource/ecological theme, the general skills presented are general to R users across all scientific disciplines.

## Based on following amazing courses

**THIS REPO**

**Instructor:** Kevin Shoemaker   
**Teaching Assistant** Ben Sedinger   
**Instructor's Office**: FA 220E			 		 
**Phone**: (775) 682-7449			  		
**Email**: kshoemaker_at_cabnr.unr.edu	

**Website**: [naes.unr.edu/shoemaker/teaching/NRES-470](http://naes.unr.edu/shoemaker/teaching/NRES-470/index.html)  

### Course Meeting Times

**Lecture & Discussion**: M, W at 10am (50 mins) (NOTE: please bring your laptop to class!)   
**Lab**: F at 10am (3 hours) 
**Office hours**:    

- Shoemaker: Wed from 11 to noon (FA 220E)    
- Sedinger: TBD 

- Lectures and Labs will be held in **FA 301**    
- Labs may occasionally be held in the NRES computer lab (**FA 234**)    

### Texts       

- [Gotelli, N. J. (1995). A primer of ecology](https://www.amazon.com/Primer-Ecology-Fourth-Nicholas-Gotelli/dp/0878933182)      
- [Beyond Connecting the Dots](http://beyondconnectingthedots.com/) (free download)   
  •	Additional readings from the primary literature will be assigned for discussion periodically.    

### Software

- [InsightMaker- free web-based systems modeling tool](https://insightmaker.com/)(no installation needed)    
- [R- free statistical programming language](https://cran.r-project.org/)  
- [Program MARK](http://warnercnr.colostate.edu/~gwhite/mark/mark.htm)  
- MS Excel (hopefully you already have this or equivalent spreadsheet software on your laptop!)

### Prerequisites    

- BIOL 314 or NRES 217 (Ecology)  
- NRES 310 (Wildlife Ecology and Management)  

### Class description  

This class will explore how concepts of population ecology (e.g., covered in BIOL 314) can be used to inform the conservation and management of natural populations and ecosystems. We will emphasize practical approaches to problem-solving in ecology, conservation, and wildlife management via creative application of population ecology theory using simulation models and statistics. Topics will include population viability analysis (PVA), occupancy models, habitat-suitability models, metapopulation models, species co-occurrence models, projecting population response to climate change and more. Laboratory exercises will provide students with hands-on experience with ecological models and their practical applications in the conservation and management of wild populations.

### Learning outcomes

1.	Identify the major classes of models used by ecologists (e.g., statistical vs mechanistic, quantitative vs heuristic, stochastic vs deterministic) and explain how and why ecologists use these models.   
2.	Apply tools such as population viability analysis (PVA), occupancy models, and metapopulation models to address the conservation and management of natural populations.   
3.	Perform basic statistics, data visualization, simulation modeling and model validation with Excel, the statistical computing language “R”, and the web-based software, InsightMaker.  
4.	Critically evaluate the strength of inferences drawn from ecological simulation models using tools such as cross-validation and sensitivity analysis.  
5.	Explain how species interactions can influence population dynamics (e.g., predictions of species range shifts), and formulate strategies for accounting for species interactions in ecological models.    
6.	Communicate original research in applied population and community ecology via a professional-style oral presentation.   

### Grading: 

The course grade will be based on the following components:

Lab exercises (8 total)	         20%  (80 points)     
Quizzes and participation        10%  (40 points)     
Group project                    25%  (100 points)      
Midterm exam # 1 (date TBD)	     10%  (40 points)    
Midterm exam # 2 (date TBD)   	 10%  (40 points)    
Final exam (5/11/2018)   	       25%  (100 points)    

NOTE: Graduate students enrolled in NRES 670 will have an additional 50 pts used to calculate their grade (see below) of a total of 370 points. 
Grading scale: A (100 to 93), A- (92 to 90), B+ (89 to 87), B (86 to 83), B- (82 to 80), C+ (79 to 77), C (76 to 73), C- (72 to 70), D+ (69 to 67), D (66 to 63), D- (62 to 60), F (below 60). 

### Exams:

There will be two midterm exams and a comprehensive final exam. These will consist of multiple-choice, short-answer questions, and essay questions requiring synthesis of ideas and critical thinking. The midterm exam will be cumulative, and based on all information presented up through the week prior to the exam.

### Lectures

Lecture grades will be based primarily on participation and occasional short quizzes. Participation is essential to the learning process (and to our mutual enjoyment of this class). Learning is not a passive process; students are expected to engage with the material in class rather than simply listen and take notes. You should be prepared in class to ask questions, to answer questions posed by other students, and to engage in frequent problem-solving activities (in class). 

### Labs  

Lab exercises will focus on applying concepts and methods introduced in lectures, and will involve real data and problems in wildlife conservation and management wherever possible. Graded lab assignments will involve figures, tables, InsightMaker models and R code (when applicable) and responses to questions in short-answer format. Laboratory write-ups will be due the following lab period, unless otherwise specified. 

### Final group project 

Students will work in groups of ~2-3 to perform a population viability analysis (PVA) to rank conservation or management actions for a species of conservation concern (species of your choice!). Grading will be based on finished products (written and oral presentations) as well as participation and peer evaluations. 

### Graduate credit (for students enrolled in NRES 670) 

Graduate students will be subject to additional expectations in order to receive graduate credit for this course. In particular, graduate students will be expected to develop an original lecture and lead an original lab activity. Graduate students will also be expected to achieve a deeper understanding of the course material, and therefore will be assigned additional readings from the scientific literature and will be expected to participate as leaders in discussions and lab activities.

### Make-up policy and late work:

Missed exams and labs cannot be made up, except in the case of emergencies. If you miss a class meeting, it is your responsibility to talk to one of your classmates about what you missed. If you miss a lab meeting, you are still responsible for completing the lab activities and write-up on your own time. You do not need to let me know in advance that you are going to miss class or lab.

### Students with Disabilities

Any student with a disability needing academic adjustments or accommodations is requested to speak with the Disability Resource Center (Thompson Building, Suite 101) as soon as possible to arrange for appropriate accommodations.

### Statement on Academic Dishonesty

Cheating, plagiarism or otherwise obtaining grades under false pretenses constitute academic dishonesty according to the code of this university. Plagiarism is using the ideas or words of another person without giving credit to the original source; this includes copying another student in class. Always cite the source of your information. This includes copying or paraphrasing from a book, journal, or unpublished material without giving credit to the author(s), and submitting a term paper that was used in another course. Academic dishonesty will not be tolerated and penalties can include filing a final grade of "F"; reducing the student's final course grade one or two full grade points; awarding a failing mark on the coursework in question; or requiring the student to retake or resubmit the coursework. For more details, see the [University of Nevada, Reno General Catalog](http://catalog.unr.edu/).

### Statement on Audio and Video Recording

Surreptitious or covert video-taping of class or unauthorized audio recording of class is prohibited by law and by Board of Regents policy. This class may be videotaped or audio recorded only with the written permission of the instructor. In order to accommodate students with disabilities, some students may have been given permission to record class lectures and discussions. Therefore, students should understand that their comments during class may be recorded.

### Statement for Academic Success Services

Your student fees cover usage of the University Math Center [(775) 784-4433], University Tutoring Center [(775) 784-6801], and [University Writing Center (775) 784-6030]. These centers support your classroom learning; it is your responsibility to take advantage of their services.

### This is a safe space

The University of Nevada, Reno is committed to providing a safe learning and work environment for all. If you believe you have experienced discrimination, sexual harassment, sexual assault, domestic/dating violence, or stalking, whether on or off campus, or need information related to immigration concerns, please contact the University’s Equal Opportunity & Title IX Office at 775-784-1547. Resources and interim measures are available to assist you. For more information, please visit: http://www.unr.edu/equal-opportunity-title-ix .”

### Class protocol

All mobile electronic devices are to be turned off during class unless the instructor gives advance permission (but laptop computers will be used in class regularly).


```{r echo=FALSE, eval=FALSE}
rmarkdown::render('index.Rmd', 'word_document')
rmarkdown::render('schedule.Rmd', 'word_document')
rmarkdown::render('LAB1.Rmd', 'word_document')
rmarkdown::render('LAB2.Rmd', 'word_document')
rmarkdown::render('LAB3.Rmd', 'word_document')
rmarkdown::render('LAB4.Rmd', 'word_document')
rmarkdown::render('LAB5.Rmd', 'word_document')
rmarkdown::render('LAB6.Rmd', 'word_document')
rmarkdown::render('LAB7.Rmd', 'word_document')


## [Quiz #1](https://unr.instructure.com/courses/15896/quizzes/21572)
## [Quiz #2](https://unr.instructure.com/courses/15896/quizzes/24149)

### Field Trips
# We will be taking 1-2 field trips to collect wildlife population data. One field trip will be full-day, on a weekend: bring breakfast, lunch, and plenty of water. Bring any appropriate gear for spending the day in the field including: binoculars, spotting scopes, and field guides, and wear appropriate clothing for hiking. Be prepared for inclement weather.


## UPCOMING

- metapopulations
- source sink


```

