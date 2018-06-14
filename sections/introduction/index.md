---
layout: post
title: Introduction 
date:   2014-05-10 
categories: 
---

# Introduction 

Modern challenges of reproducibility in research, particularly computational reproducibility, have produced a lot of discussion in papers, blogs and videos, some of which are listed [here](http://ropensci.github.io/reproducibility-guide/sections/references/). 

In this short introduction, we briefly summarise some of the principles, definitions and questions relevant to reproducible research that have emerged in the literature. We outline basic and widely applicable steps for promoting reproducibility. While our suggestions for tools and workflow are aimed primarily at the computational environment of the R programming language, the principles and definitions sketched out here are applicable to researchers working in any environment. You are welcome to contribute to this guide (fix typos, add to the [reference list](https://github.com/ropensci/reproducibility-guide/blob/gh-pages/sections/references/index.md), etc.) by submitting a pull request to its [github repository](https://github.com/ropensci/reproducibility-guide). 

If you're not familiar with R, have a look at [rforcats.net](http://rforcats.net/) for a gentle introduction, and if you're already working with R then have a look at Hadley's [Advanced R programming book](http://adv-r.had.co.nz/) for a guide to best practices. 

# Why do reproducible research? 

There are two basic reasons to be concerned about making your research reproducible. The first is **to show evidence of the correctness of your results**. Descriptions contained in scholarly publications are rarely sufficient to convince sceptical readers of the reliability of our work. In simpler times, scholarly publications showed the reader most of the work involved in getting the result. The reader could make an informed choice about the credibility of the science. Now, the reader may feel they are being asked to blindly trust in all the details that were not described in the original journal article. 

Adopting a reproducible workflow means providing our audience with the code and data that demonstrates the decisions we made as we generated our results. This makes it easier for others to satisfy themselves that our results are reliable (or not, since reproducibility is no guarantee of correctness).

The second reason to aspire to reproducibility is **to enable others to make use of our methods and results**. Equipped with only our published article, our colleagues might struggle to reconstruct our method in enough detail to apply it to their own data. Adopting a reproducible workflow means publishing our code and data in order to allow our colleagues to extend our approach to new applications with a minimum of effort. This has the potential to save a great deal of time in transmitting knowledge to future researchers. 

# What are the principles of reproducible research?

The motivating principle for reproducible research is that the traditional unit of scholarly communication - a published article - is only the tip of the iceberg of the research process. Jon Claerbout described the article as merely an advertisement for research [(Claerbout and Karrenbach 1992)](http://sepwww.stanford.edu/doku.php?id=sep:research:reproducible:seg92): 

> An article about computational results is advertising, not scholarship. The actual scholarship is the full software environment, code and data, that produced the result. 

In most cases, when we have only an article, we are unable to engage with the bulk of the details and decisions that lead to the figures, tables and narrative presented in the article. 

The aim of practising reproducible computational research is to expose more of the research workflow to our audience. This makes it easier for them to make a more informed assessment of our methods and results, and makes it easier for them to adapt our methods to their own research. 

# What are the different kinds of reproducible research?

Enabling reproducibility can be complicated, but by separating out some of the levels and degrees of reproducibility the problem can become more manageable because we can focus our efforts on what best suits our specific scientific domain. Victoria Stodden [(2014)](http://edge.org/response-detail/25340), a prominent scholar on this topic, has identified some useful distinctions in reproducible research:

- _Computational reproducibility_: when detailed information is provided about code, software, hardware and implementation details.

- _Empirical reproducibility_: when detailed information is provided about non-computational empirical scientific experiments and observations. In practise this is enabled by making data freely available, as well as details of how the data was collected.

- _Statistical reproducibility_: when detailed information is provided about the choice of statistical tests, model parameters, threshold values, etc. This mostly relates to pre-registration of study design to prevent p-value hacking and other manipulations. 

[Stodden et al. (2013)](http://stodden.net/icerm_report.pdf) place **computational reproducibility** on a spectrum with five categories that account for many typical research contexts:

> - _Reviewable Research_. The descriptions of the research methods can be independently assessed and the results judged credible. (This includes both traditional peer review and community review, and does not necessarily imply reproducibility.)
> - _Replicable Research_. Tools are made available that would allow one to duplicate the results of the research, for example by running the authors’ code to produce the plots shown in the publication. (Here tools might be limited in scope, e.g., only essential data or executables, and might only be made available to referees or only upon request.)
> - _Confirmable Research_. The main conclusions of the research can be attained independently without the use of software provided by the author. (But using the complete description of algorithms and methodology provided in the publication and any supplementary materials.)
> - _Auditable Research_. Sufficient records (including data and software) have been archived so that the research can be defended later if necessary or differences between independent confirmations resolved. The archive might be private, as with traditional laboratory notebooks.
> - _Open or Reproducible Research_. Auditable research made openly available. This comprised well-documented and fully open code and data that are publicly available that would allow one to (a) fully audit the computational procedure, (b) replicate and also independently reproduce the results of the research, and (c) extend the results or apply the method to new problems.

This kind of spectrum is valuable because it easy for us to understand how our current practices can be defined. It helps to pinpoint limitations that we face (for example many researchers are unable to publicly release sensitive data)  and identify basic changes we can make to improve reproducibility. 

## How can software tools can make our research more reproducible? 

For many domains of science there are already several options for software tools to help overcome the technical challenges of doing reproducible research. These tools enable researchers to capture and communicate the details of their workflow with much greater efficiency that simply writing a lengthy prose narrative. There are three general types of software tools (cf. [Stodden et al 2013](http://stodden.net/icerm_report.pdf)). For more specific details on the tools named here, see our [tools page](http://ropensci.github.io/reproducibility-guide/sections/tools/):

- **Literate computing, authoring, and publishing**. These tools enable writing and publishing self-contained documents that include narrative and code used to generate both text and graphical results. In the R ecosystem, [knitr](http://yihui.name/knitr/) and its ancestor [Sweave](http://www.stat.uni-muenchen.de/~leisch/Sweave/) used with [RStudio](https://www.rstudio.com/) are the main tools for literate computing. [Markdown](http://daringfireball.net/projects/markdown/) or [LaTeX](http://www.latex-project.org/) are used for writing the narrative, with chunks of R code sprinkled throughout the narrative. [IPython](http://ipython.org/) is a popular related system for the Python language, providing an interactive notebook for browser-based literate computing. 

- **Version control**. These tools enable you to keep a record of file changes over time, so specific versions can be recalled later. During exploratory data analysis you might pursue several paths that lead nowhere, with version control you can efficiently revert to an earlier point in the analysis without starting from scratch. There are several systems that are widely used, and amongst R users the [git](http://git-scm.com/) version control system is especially popular. Version control tools combined with web services such as [Github](https://github.com/) and [BitBucket](https://bitbucket.org/) also enable you to work with collaborators with a minimum of confusion and friction. 

- **Tracking provenance**. Provenance refers to the tracking of chronology and origin of research objects, such as data, source code, figures, and results. Programs that track provenance enable you to capture a complex workflow that relies on many different tools. Tools that record provenance of computations include [VisTrails](http://www.vistrails.org/), [Kepler](https://kepler-project.org/), [Taverna](http://www.taverna.org.uk/), and several others. Many of these can include R as part of a sequence of tools. If your workflow uses many different programs, these provenance trackers will be useful for efficiently documenting the order of processes and parameters to show others your analytical process.  

- **Automation** Several Unix tools are useful for streamlined automation and documentation of the research process, e.g. editing files, moving input and output between different parts of your workflow, and compiling documents for publication. Scripts for [shell programs](http://www.gnu.org/software/bash/) and [make](http://www.gnu.org/software/make/) files enable highly efficient and easily repeatable control of your computer. These scripts can also be used to keep a record of every kind of action on your computer. There are lots of options for learning and using Unix tools, for more details check out Karl Broman's [list of tools and editors](http://kbroman.github.io/Tools4RR/assets/lectures/02_unix_withnotes.pdf) for different platforms. 

- **Capturing the computational environment** A substantial challenge in reproducing analyses is installing and configuring the web of dependencies of specific versions of various analytical tools. Virtual machines (a computer inside a computer) enable you to efficiently share your entire computational environment with all the dependencies intact. Popular VM applications include [VirtualBox](https://www.virtualbox.org/) and [VMWare](http://www.vmware.com/). One challenge of working with VMs is that the files that contain the environment are not small, typically one gigbyte or more, which can be awkward to share. On the other hand, they are convenient for use with cloud-based services such as Amazon EC2. 

## How to give and receive credit for reproducible research?

One of the challenges going forward is how to share code and data. In many disciplines, researchers have concerns about copyright, being scooped, and getting recognition for the effort invested in writing code and collecting data. These concerns hinder people from sharing details of their research and impede reproducibility. In response to these concerns, [Stodden (2009)](http://papers.ssrn.com/sol3/papers.cfm?abstract_id=1362040) has proposed the **Reproducible Research Standard** to encourage researchers to release their products with standardised instructions for reuse and attribution. In brief, this standard recommends that researchers: 

1. Release media components (text and figures, such as markdown, LaTeX, PDF and other documents) under a [Creative Commons Attribution (CC-BY) licence](http://creativecommons.org/licenses/by/4.0/).
2. Release code components under the [MIT license](http://opensource.org/licenses/MIT) or similar.
3. Release data under the [CC0 licence](https://creativecommons.org/publicdomain/zero/1.0/), that is, place data in the public domain. 

There are several options for depositing these components of the research compendia online that give [DOI](https://en.wikipedia.org/wiki/Digital_object_identifier)s for convenient citing and discovery (eg. [figshare](http://figshare.com/) with github integration, [zenodo](https://zenodo.org/) also with github integration, and [researchcompendia.org](http://researchcompendia.org/)).

These recommendations will not be suitable for every occasion. For example, research that uses human subjects data obviously cannot make that data publicly available without substantial changes to protect identities. In these situations, some modifications will be required to maximize reproducibility while honoring obligations to stakeholders. In some cases, a solution might be releasing a sample of "dummy" data that contains similar qualities to the real data set. While this would not be fully 'reproducible research' as defined above, it would still be very useful to other researchers who could use a validated sample to inspect, evaluate and extend the research.   

## How can we make reproducible research the norm?

There are substantial costs of time and effort involved in become familiar with ways of making your research more reproducible. Until code and data sharing becomes common practice, it can be difficult for many researchers to see the point of adopting these procedures. There are many small informal things we can do to promote reproducibility and increase recognition of these efforts. Along these lines, [Leveque et al. (2012)](http://www.stanford.edu/~vcs/papers/CiSE2012-LMS.pdf) recommend we: 

> - **Train students** by putting homework, assignments & dissertations on the reproducible research spectrum
> - **Publish examples** of reproducible research in our field
> - **Request code & data** when reviewing
> - **Submit to & review for journals** that support reproducible research
> - **Critically review & audit** data management plans in grant proposals
> - Consider reproducibility wherever possible in **hiring, promotion & reference letters**.

Similarly, [Collberg et al. (2014)](http://reproducibility.cs.arizona.edu/tr.pdf) summarise the lessons they learned in attempting to reproduce 600 computer science projects: 

> - Unless you have compelling reasons not to, plan to release the code. It is the right thing to do, and if you start with this mind-set from the beginning of the project, the amount of extra work will likely be negligible.
> - Students will leave, plan for it. When building the system keep in mind that the code should outlive both you and the student.
> - Create permanent email addresses. You and your students will most likely be changing jobs a few times during your career. While some schools will keep old email addresses around, or forward email, you cannot count on it. Create email addresses that you know will be permanent throughout your working life and use them in all professional correspondence.
> - Create project websites. These are more likely to remain functional over time than email addresses. Put the URL in the paper. Be prepared to upload code and test data to your web sites at the same time as you upload the paper describing your system to a conference site for review.
> - Use a source code control system. Whenever you submit or publish a paper, set a label on the corresponding code version so that you can easily recreate it.
> - Backup your code.
> - Resolve licensing issues. If you anticipate problems start the licensing process early, so that you are able to release the code at the same time as the paper is submitted for publication.
> - Keep your promises. If your grant application states that you will be sharing code with the community, plan for keeping that promise.
> - Plan for longevity. Projects may live on for a long time, with many students building on the code. Plan for this at the onset of the project, by setting up the appropriate directory structures, plug-in architectures, etc., which will allow the project to grow.
> - Avoid cool but unusual designs. Unless you have a compelling reason to do otherwise, stay with standard operating systems, programming languages, and tool chains.

## What's next?

If this is all news to you, the next steps are to simply dive in and find the tools and workflow that best suit your research domain. Incrementally adding reproducibility to current projects is an excellent way to learn more, and then future projects can be planned for built-in reproducibility from the start. Becoming involved in the community of researchers in your domain who are using tools for reproducibility can also ease the transition to new tools and workflows. 

Read through the other [sections of this site](http://ropensci.github.io/reproducibility-guide/) for more specific instructions, details and ideas on reproducible research using R. Also check out our curated list of [further readings](http://ropensci.github.io/reproducibility-guide/sections/references/) which includes links to numerous excellent guides on the practical details of improving reproducibility with R. 
