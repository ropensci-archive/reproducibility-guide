---
layout: post
title:  Best Practices for Project Metadata
date:   2014-03-30 14:12:14
categories: 
---

Metadata is the information that accompanies your code and data, describing both function and usage. Often written in README files, the information you want to include with your code and data is for assurance of long-term usage.  Many schemes have been developed to standardize metadata practices. For instance, one of the most popular is the [Dublin Core](http://en.wikipedia.org/wiki/Dublin_Core) for code, but many communities adopt their own. Since [there are many standards in sciences](https://library.uoregon.edu/datamanagement/repositories.html), it is often worth checking on specifics of where your code and data are housed.

For clarity, project metadata can be divided into three main categories: software, smaller tools (such as shorter scripts for pre-processing data files), and data analysis. Here is a brief guide to helping you include appropriate meta data to release with your work.

## Common  meta data to include in README files for code

**Vital for Every Project**: Title, Authors, Description, Date, License 

**Vital for Programs**:  Language Versions, Dependencies, Dependency Versions, Git Commit, [proper version number](http://semver.org/), How to Install

**Vital for Larger Programs**: Tests, How to run Tests, Run Times Under Commonly Used Platforms, Sample Input and Output Data, Sample Run Usage

### A list of Questions to ask yourself about what meta data to include
via @manics and @cboettig

In addition to checking for the specificities of the type of project you are working on, for instance R package submission in CRAN requires specific schema, ask yourself these questions:

- Is the software in a suitable repository?
- Is the link in the form of a persistent identifier, e.g. a DOI? 
- Can you download the software from this link?
- If the Code repository section is filled out, does the identifier link to the appropriate place to download the source code? Can you download the source code from this link?
- Can a reader understand how to build/deploy/install/run the software, and identify whether the software is operating as expected?
- Does the software run on the systems specified?

- Is it obvious what the support mechanisms for the software are?
- How does it compare to other similar projects (if any)?
- Use cases?
- Situations that it's not designed for?

- Does the software have a suitable open license?
- Is the software license included in the software in the repository? 
- Is the software license included in the source code?

- Are sample input and output data provided with the software?









