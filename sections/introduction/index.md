---
layout: post
title: Introduction 
date:   2014-03-31 
categories: 
---

# Introduction 

Reproducibility is an increasingly important topic in discussions of doing good science. As science becomes more complex, particularly due to the increased role of computational methods, it is less likely that the descriptions contained in scholarly publications are sufficient for others to obtain substantially similar results on their own or extend the published method to new data or new applications. Tackling the challenges of doing reproducible research has resulted in many scholarly publications, as well as instructive blog posts, videos and other resources, which we list [here](http://ropensci.github.io/reproducibility-guide/sections/references/). In this short introduction, we briefly summarise some of the principles, definitions and complexities of reproducible research that have emerged in the literature. We also outline some basic and widely applicable steps for promoting reproducibility. While our specific tool and workflow suggestions focus on the computational environment of the R programming language, the principles and definitions sketched out here are applicable to researchers working in any environment. You are welcome to contribute to this guide (fix typos, add to the [reference list](https://github.com/ropensci/reproducibility-guide/blob/gh-pages/sections/references/index.md), etc.) by submitting a pull request to its [github repository](https://github.com/ropensci/reproducibility-guide). 

# Principles of Reproducible Research

The motivating principle for reproducible research is that the traditional unit of scholarly communication - a published article - is only the tip of the iceberg of the research process. Jon Claerbout, one of the pioneers of reproducible research, described the article as merely an advertisement for research (Claerbout and Karrenbach 1992): 

> An article about computational result is advertising, not scholarship. The actual scholarship is the full software environment, code and data, that produced the result. 

In most cases, when we have only an article, we are unable to engage with the bulk of the details and decisions that lead to the figures, tables and narrative presented in the article. 

The aim of practising reproducible research is to expose more of the research workflow to our audience. This makes it easier for them to make a more informed assessment of our methods and results, and makes it easier for them to adapt our methods to their own research. 

# Taxonomies of reproducibility

Enabling reproducibility can be complicated, but by separating out some of the levels and degrees of reproducibility the problem can become more manageable because we can focus our efforts on what best suits our specific scientific domain. Victoria Stodden (2014), a prominent scholar on this topic, has identified some useful distinctions in reproducible research:

- Computational reproducibility: when detailed information is provided about code, data, software, hardware and implementation details.

- Empirical reproducibility: when detailed information is provided about non-computational empirical scientific experiments and observations

- Statistical reproducibility: when detailed information is provided about the choice of statistical tests, model parameters, threshold values, etc. 

Computational reproducibility has attracted a lot of recent attention from a wide variety of disciplines, and we focus on that here. The other two types of reproducibility are more domain specific and it is more challenging to offer general principles and tools that will be equally useful to everyone.  

# Spectra of Reproducible Research

## Reviewable 

## Replicable

## Confirmable 

## Auditible

## Replicable

## Reproducible

## Complexities and challenges of Reproducible Research

RRS

Basic steps for promoting Reproducible Research 

- literate programming

- teaching, reviewing

Lessons learned from [Collberg et al. 2014](http://reproducibility.cs.arizona.edu/tr.pdf)

- Unless you have compelling reasons not to, plan to release the code. It is the right thing to do, and if you start with this mind-set from the beginning of the project, the amount of extra work will likely be negligible.
- Students will leave, plan for it. When building the system keep in mind that the code should outlive both you and the student.
- Create permanent email addresses. You and your students will most likely be changing jobs a few times during your career. While some schools will keep old email addresses around, or forward email, you cannot count on it. Create email addresses that you know will be
permanent throughout your working life and use them in all professional correspondence.
- Create project websites. These are more likely to remain functional over time than email addresses. Put the URL in the paper. Be prepared to upload code and test data to your web sites at the same time as you upload the paper describing your system to a conference site for review.
- Use a source code control system. Whenever you submit or publish a paper, set a label on the corresponding code version so that you can easily recreate it.
- Backup your code.
- Resolve licensing issues. If you anticipate problems start the licensing process early, so that you are able to release the code at the same time as the paper is submitted for publication.
- Keep your promises. If your grant application states that you will be sharing code with the community, plan for keeping that promise.
- Plan for longevity. Projects may live on for a long time, with many students building on the code. Plan for this at the onset of the project, by setting up the appropriate directory structures, plug-in architectures, etc., which will allow the project to grow.
- Avoid cool but unusual designs. Unless you have a compelling reason to do otherwise, stay with standard operating systems, programming languages, and tool chains.
- Plan for Reproducible Releases. Use the same techniques that Release Managers in industry use to ensure consistent and reproducible builds. For example, check in your entire tool chain (compilers, linkers, libraries, etc.) into your source code control system, and start
any release by building the tool chain from scratch. There is an extra startup cost when beginning a new project, but this will be paid off over time. It will, for example, make it easier for new students to join the project.

Recommendation:  every article be required to specify the level of reproducibility a reader or reviewer should expect.