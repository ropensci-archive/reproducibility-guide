---
layout: post
title:  Introduction to Tools
date:   2014-03-30 
categories: 
---

The current ecosystem of tools for developing reproducible research documents with R is small, but growing and changing.  These tools are further combined to create dynamic [workflows]({{ site.baseurl/workflows/}}), allowing unprecedented organization of scientific work.  The following links provide additional information about the tools referenced on this site.  All the tools listed here are free. 

## Authoring

- [RStudio](http://www.rstudio.com/): A powerful integrated development environment for R. Supports syntax highlighting of Markdown plus preview views of output documents (html in current release, additional formats in preview release). Markdown and LaTeX documents can be composed directly in RStudio.  
- [Other markdown editors](https://github.com/scholmd/scholmd/wiki/Tools-to-support-your-markdown-authoring): The Scholarly Markdown Project wiki provides a list of applications that provide support for authoring in Markdown.  In addition to the list of tools, there are many other great resources available there, including a basic tutorial on markdown, how to include common manuscript elements (citations, figures, tables, etc.), and some advanced formatting topics.

## Typsetting/Formatting Languages

- [Markdown](http://daringfireball.net/projects/markdown/): A simple text-based markup for creating easy to read documents to be converted to HTML, PDF, docx and other formats.  Increasingly common markup used for creating documents, blogs, presentations, etc. Markdown can be quickly mastered and produces good-looking documents with minimum effort. Document styles can be customised with HTML/CSS and math notation can be included using LaTeX or [mathjax](http://www.mathjax.org/). Markdown is a great choice for getting started with reproducible research.
- [R Markdown](http://rmarkdown.rstudio.com/): An enhanced flavor of Markdown that recognizes R code chunks, which allows the embedding of R directly into a Markdown document to create dynamic and reproducible documents. An R Markdown document can also be converted to standalone HTML file (with images embedded directly in the file) that is easy to share.
- [LaTeX](http://www.latex-project.org/): A typesetting language that has long been used in scientific publishing.  It forms the basis of many of reproducible workflows.  Various distributions exist for different operating systems.  A very complex and flexible typesetting system, ideal for documents that include a lot of math and other scientific notation.

## R Packages

- [knitr](http://yihui.name/knitr/): This package is the engine for dynamic report generation in R. It allows narrative and code to be written in the same document or in explicitly linked documents. When a document is 'knitted', the R code is executed, figures and tables are generated, and the narrative text is formatted according to the markdown syntax provided. 
- [rmarkdown](https://github.com/rstudio/rmarkdown): This package interprets the markdown syntax to format the text (for example with styled headings of different levels, bold and italic text) and recognises the chunks of R code as computable content. 
- [slidify](http://slidify.org): This package turns rmarkdown documents into slides that can be presented in a browser. Several popular slide frameworks are built-in and can be further customised with CSS.

## Document Conversion 

- [pandoc](http://johnmacfarlane.net/pandoc/): A universal document converter, open source and cross-platform. Commonly used in R-based workflows to convert markdown into HTML/PDF/docx, but also capable of many other conversions. 


## Blogging with Markdown

- [Jekyll](http://jekyllrb.com/): A simple static blogging framework where each blog post is a markdown document. Tightly integrated with GitHub.
- [Ghost](https://ghost.org/): Another popular blogging platform where posts are markdown documents.
