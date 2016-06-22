---
layout: post
title:  Short Workflow for R Reports 
date:   2014-03-30 
categories: 
---

### Components

Programs: R Studio
Packages: rmarkdown
Input files: .Rmd, data (.csv, .txt)

### Description

Short way to generate reports and documentation in R by combining the power of pandoc and knitr.  

### What you need to know

[Markdown](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet) Cheat sheet via [@adam-p](https://github.com/adam-p).

[R Code Chunks](http://rmarkdown.rstudio.com/authoring_rcodechunks.html) R Markdown documentation.

<img src="{{ site.baseurl }}/assets/img/workflow01.png" class="img-responsive" alt="...">
<hr>

While working in R, you can generate versatile R reports by installing the package rmarkdown ([documentation here](http://rmarkdown.rstudio.com/index.html)).  Current versions of R Studio include the package.  To install, use:

    install.packages("devtools")
    devtools::install_github("rstudio/rmarkdown") 

To generate documents, use the render command, specifying file input and type of output: 

    render("input.Rmd", "pdf_document")

You can further customize by modification of [knitr](http://yihui.name/knitr/) and [pandoc](http://rmarkdown.rstudio.com/authoring_pandoc_markdown.html) specifications. RStudio provides a user-friendly interface to the render command through its knit button (Ctrl/Cmd + Shift + K) which will render the output using the metadata specified in the pandoc YAML header.

Greater control over the knit process can be achieved by providing a custom knit function to RStudio, to be executed upon clicking this button. For example, a different file name can be specified as:

    rmarkdown::render(inputFile, encoding = encoding,
                      output_file = paste0(dirname(inputFile),'/article.pdf'))

Multiple subsections can also be built into a single output from within RStudio for more elaborate reproducible documents by replacing the default `render` function with multiple commands to control the conversion of disparate files to be included within a single document. E.g. to convert multiple Rmarkdown files and then append them and convert the output to pdf:

    knit: (function(inputFile, encoding) { for (section in list.files(pattern="paper-part-.*?.Rmd")) { rmarkdown::render(section, encoding = "UTF-8", quiet=TRUE) }; rmarkdown::render(inputFile, encoding = encoding, output_file = paste0(dirname(inputFile),'/README.md')) })

For notes on using Rmarkdown see [lecture 3](http://kbroman.org/Tools4RR/assets/lectures/03_knitr_Rmd_withnotes.pdf) from Karl Broman's [Tools For Reproducible Research course](http://kbroman.org/Tools4RR/), and for examples of custom knit functions using see [notes here](https://github.com/lmmx/devnotes/wiki/Rmarkdown-custom-knit-hook-to-compile-a-multi-part-document).

