---
layout: post
title:  Short Workflow for R Reports 
date:   2014-03-30 
categories: 
---

###Components

Programs: R Studio
Packages: rmarkdown
Input files: .Rmd, data (.csv, .txt)

###Description

Short way to generate reports and documentation in R by combining the power of pandoc and knitr.  

###What you need to know

[Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) Cheat sheet via [@adam-p](https://github.com/adam-p).

[R Code Chunks](http://rmarkdown.rstudio.com/authoring_rcodechunks.html) R Markdown documentation.

<img src="{{ site.baseurl }}/assets/img/workflow01.png" class="img-responsive" alt="...">
<hr>

While working in R, you can generate versatile R reports by installing the package rmarkdown ([documentation here](http://rmarkdown.rstudio.com/index.html)).  Current versions of R Studio include the package.  To install in general R installization use.

    install.packages("devtools")
    devtools::install_github("rstudio/rmarkdown") 

To generate documents use the render command, specifiying file input and type of output. 

    render("input.Rmd", "pdf_document")

You get get further into the output customization by modification of [knitr](http://yihui.name/knitr/) and [pandoc](http://rmarkdown.rstudio.com/authoring_pandoc_markdown.html) specifications.
