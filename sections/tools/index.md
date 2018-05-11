---
layout: post
title:  Introduction to Tools
date:   2014-03-30 
categories: 
---

The current ecosystem of tools for developing reproducible research documents with R is small, but growing and changing.  These tools are further combined to create dynamic [workflows]({{ site.baseurl/workflows/}}), allowing unprecedented organization of scientific work.  The following links provide additional information about the tools referenced on this site.  All the tools listed here are free. 

## Authoring

- [RStudio](http://www.rstudio.com/): A powerful integrated development environment for R. Supports syntax highlighting of markdown plus preview views of output documents (html in current release, additional formats in preview release). Markdown and LaTeX documents can be composed directly in RStudio.  
- [Emacs](http://www.gnu.org/software/emacs/): Emacs is the [officially endorsed](http://cran.r-project.org/doc/manuals/r-release/R-FAQ.html#R-and-Emacs) editor for working with R. Amongst the numerous add-on packages is support for markdown, LaTeX, and R code formatting and execution. As Emacs is mostly operated from the command-line it can take longer to learn to use than RStudio.
- [Other markdown editors](https://github.com/scholmd/scholmd/wiki/Tools-to-support-your-markdown-authoring): The Scholarly Markdown Project wiki provides a list of applications that provide support for authoring in Markdown.  In addition to the list of tools, there are many other great resources available there, including a basic tutorial on markdown, how to include common manuscript elements (citations, figures, tables, etc.), and some advanced formatting topics.

## Typsetting/Formatting Languages

- [Markdown](http://daringfireball.net/projects/markdown/): A simple text-based markup for creating easy to read documents to be converted to HTML, PDF, docx and other formats.  Increasingly common markup used for creating documents, blogs, presentations, etc. Markdown can be quickly mastered and produces good-looking documents with minimum effort. Document styles can be customised with HTML/CSS and math notation can be included using LaTeX or [mathjax](http://www.mathjax.org/). Markdown is a great choice for getting started with reproducible research.
- [R Markdown](http://rmarkdown.rstudio.com/): An enhanced flavor of Markdown that recognizes R code chunks, which allows the embedding of R directly into a Markdown document to create dynamic and reproducible documents. An R Markdown document can also be converted to standalone HTML file (with images embedded directly in the file) that is easy to share. R Markdown is versatile because HTML and LaTeX can be mixed into the document where more complex formatting is needed.
- [LaTeX](http://www.latex-project.org/): A typesetting language that has long been used in scientific publishing.  It forms the basis of many of reproducible workflows.  Various distributions exist for different operating systems.  A very complex and flexible typesetting system, ideal for documents that include a lot of math and other scientific notation.

## R Packages

- [knitr](http://yihui.name/knitr/): This package is the engine for dynamic report generation in R. It allows narrative and code to be written in the same document or in explicitly linked documents. When a document is 'knitted', the R code is executed, figures and tables are generated, and the narrative text is formatted according to the markdown syntax provided. 
- [rmarkdown](https://github.com/rstudio/rmarkdown): This package interprets the markdown syntax to format the text (for example with styled headings of different levels, bold and italic text) and recognises the chunks of R code as computable content. 
- [slidify](http://slidify.org): This package turns rmarkdown documents into slides that can be presented in a browser. Several popular slide frameworks are built-in and can be further customised with CSS.
- [manuscriptPackage](https://github.com/jhollist/manuscriptPackage): This package is a template for creating and distributing a reproducible manuscript. Since it is structured as an R package all scripts can be saved as functions in /R, data stored in /data, and the manuscript stored as an R Markdown file in /vignettes.
- [drake](https://github.com/ropensci/drake): This package is a general-purpose workflow manager and [scalable high-performance computing engine](https://ropensci.github.io/drake/articles/parallelism.html). It rebuilds intermediate data objects when their dependencies change, and it skips work when the results are already up to date. In [drake](https://github.com/ropensci/drake)'s paradigm, [knitr](http://yihui.name/knitr/) reports are optional end-stage outputs that serve to summarize and communicate the results of the preceding computations.
 
## Dependency control
- [packrat](https://github.com/rstudio/packrat): This R package monitors the versions of the packages used in a project and creates a local archive of the versions used to ensure future reproducibility of the analysis. This means that if future versions of packages used in your analysis change and break your scripts, then you still have a copy of the exact version that works with your analysis, and it's stored together with your scripts.
- [rocker](https://github.com/rocker-org/rocker): Rocker is a project that maintains [docker](https://en.wikipedia.org/wiki/Docker_(software)) files and images that create highly isolated computational environments on OSX, Windows or Linux computers so you can precisely control depenendencies. It's like a ultra-lightweight virtual machine for running R and RStudio, and the dockerfiles and images can be easily shared to ensure reproducible computational environments. 
- [continuous integration](https://travis-ci.org/): This web service warns when changes in the code cause an analysis to fail. Every time you commit a change to GitHub, this system automatically downloads the source code, all relevant data and runs the analysis, checks each commit to see if it passes a suite of tests, and sends you an email if anything failed. It can be used with R and many other programming languages. See [here](https://github.com/eddelbuettel/r-travis) for getting started with CI for R packages on GitHub.

## Version control
- [git](http://git-scm.com/): Version control software for keeping track of the history of code and text, and for collaborating with other researchers
- [GitHub](https://github.com/): One of the more popular of the numerous web services that host git repositories online in public (free) or private (not free). [Here](https://github.com/search?utf8=&q=stars%3A%3E%3D100++language%3Ar&type=Repositories&ref=searchresults) are some of the most popular R repositories on GitHub. 

## Document Conversion 

- [pandoc](http://johnmacfarlane.net/pandoc/): A universal document converter, open source and cross-platform. Commonly used in R-based workflows to convert markdown into HTML/PDF/docx, but also capable of many other conversions. Currently pandoc is built-into RStudio, but it can also be used stand-alone with other editors.  

## Blogging with Markdown

- [Jekyll](http://jekyllrb.com/): A simple static blogging framework where each blog post is a markdown document. Tightly integrated with GitHub.
- [Samantha](https://github.com/DASpringate/samatha): An R package for quickly building Github-ready static sites in R, designed to allow blog posts to be written in Rmarkdown.
- [Ghost](https://ghost.org/): Another popular blogging platform where posts are markdown documents.
