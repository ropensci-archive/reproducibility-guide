---
layout: post
title:  Best Practices for Project Meta Data
date:   2014-03-30 14:12:14
categories: 
---

###Ideas for structure:

**Minimum**: sys.info(), sessionInfo(), language versions, dependencies, dependency versions, license, author, git commit id,

**If Tool**: example dataset (w/expected output), run times under commonly used platforms.  

**Larger Programs** tests, how to run tests and test location. 

###Questions 
**Great rundown of what the descriptors should address via @manics and @cboettig.**

- Is the software in a suitable repository?
- Does the software have a suitable open licence?
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
- Use cases
- Situations that it's not designed for
- An explanation on how to install program