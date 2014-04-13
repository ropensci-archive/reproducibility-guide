---
layout: post
title:  Best Practices for Project Metadata
date:   2014-03-30 14:12:14
categories: 
---

Metadata is the information that accompanies your code, its main purpose being description of function and usage.  Metadata is essential all code and data, but there are varying levels of what is acceptable dpending on many factors.  Often written in README files, the information you want to include with your work is for assurance of long-term usage of whatever work you are presenting.  There is many schemes developed to standardize metadata practices, for instance one of the most popular is the [Dublin Core](http://en.wikipedia.org/wiki/Dublin_Core). Since there are so many standards, it is best to strive to include as much detail as necessary and possible, in a concise fashion. 

Often in the sciences, many projects can be split mainly into software, smaller tools, and data analysis. Here is a brief guide to helping you include the correct metadata to release with your work.

##Common  metadata to include in README  in the sciences

**Vital for Every Project**: Title, Author, Description, Date, License, 

**Vital for Programs**:  Language Versions, Dependencies, Dependency Versions,Git Commit, [proper version number](), How to Install,

**Vital for Larger Programs**: Tests, How to run Tests, Run Times Under Commonly Used Platforms, Sample Input and Output Data, Sample Run Usage,

##A list of Questions to ask yourself about what
via @manics and @cboettig

In addition to checking for the specificities of the type of project you are working on, for instance R package submission in CRAN requires specific schema, ask yourself these questions:

- Is the software in a suitable repository?
- Does the software have a suitable open license?
- Is the link in the form of a persistent identifier, e.g. a DOI? 
- Can you download the software from this link?
- If the Code repository section is filled out, does the identifier link to the appropriate place to download the source code? Can you download the source code from this link?
- Is the software license included in the software in the repository? 
- Is it included in the source code?
- Is sample input and output data provided with the software?
- Is the code adequately documented? Can a reader understand how to build/deploy/install/run the software, and identify whether the software is operating as expected?
- Does the software run on the systems specified?
- Is it obvious what the support mechanisms for the software are?
- How does it compare to other similar projects (if any)?
- Use cases?
- Situations that it's not designed for?

##Resources




