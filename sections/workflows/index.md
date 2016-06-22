---
layout: post
title:  Useful Work Flows
date:   2014-03-30 
categories: 
---

Developing a work flow that works for you can save you and your collaborators, days, weeks, or even months of time.  Most importantly, it keeps your project tightly glued together, making the project a single, sharable unit.  This allows anyone to explore and reproduce scientific work with limited conflict. In the long term, it is an investment all researchers should be thinking about.  

Although some work flows can seem incredibly complex, an important aspect to notice is modularity.  Start simple and gradually add to your work flow.  The modularity of work flows allows unprecedented flexibility and customization.  The whole goal is to effortlessly update any aspect of your research without it making any other aspect obsolete.  This allows you to focus on the work rather than keeping track of the work.  

With a fine tuned work flow, you can just add the data to the front end of your work flow and instantaneously it is analyzed and visualized in repeatable ways, outputting end products such as presentations, reports, notebooks, and manuscripts. 

## Choosing Your Work Flow

You want to think about what the final output of your work will be.  The more outputs, the more complex the work flow.  Are you at a point in your project where all you need is documentation of analysis being performed in R?  Then maybe all you need to do is use R/RStudio and the R package knitr.  Are you going to analyze your data while writing your manuscript, and want to keep them in the same work flow for parallel updating? 

Fortunately, most researchers require similar operations, so we can employ work flows that have been optimized by others. The overall goal is to work within a framework that encourages universal reproducibility, both for yourself and others interested in your work. 

## Work flow frameworks

Often work flows consist of several tasks, or transformations, necessary to produce files suitable for analysis in R. Many users find that a modern "pipeline framework" is beneficial for managing these tasks in a reproducible and automated manner. There are several work flow frameworks (e.g. Snakemake, Nextflow, Luigi) but virtually all of them provide _reentrancy_, the ability to restart interrupted work flows where they left off, and _dependency resolution_, which ensures that downstream tasks are re-run should new or modified inputs appear. Work flow frameworks are also useful for reproducible research in that they provide structures by which tools, data, and metadata are parameterized in ways that are easily understood by others.


<div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <img src="{{ site.baseurl }}/assets/img/workflow01.png" alt="workflowDiagram">
      <div class="caption">
        <h3>Short work flow for R reports</h3>
        <p>Tools: Markdown, R/R studio, rmarkdown (R package), pandoc, knitr </p>
        <p><a href="{{ site.baseurl }}/sections/workflows/workflow1" class="btn btn-primary" role="button">More</a></p>
    </div>
  </div>
