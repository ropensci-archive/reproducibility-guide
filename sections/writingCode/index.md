---
layout: post
title:  Guidelines to Writing Code
date:   2014-07-24
categories: 
---

# Description

Using tools like git for version control and knitr for dynamic figure generation are great steps forward towards better research transparency and reproducibility. 

But there are also steps to be made in improving code and preparing data for re-use. These steps don't necessarily involve the use of new tools, but instead would be the result of applying "best practice" guidelines.

We aim to begin compiling resources here. This is only a start, and we'd encourage anyone to suggest further guidelines, particularly those that are specific to various statistical software packages.

---

# Guidelines for writing code

**Very useful manual**:

[Gentzkow and Shapiro, "Code and Data for the Social Sciences: A Practitioner's Guide" (including section "RA Manual: Notes on Writing Code.") 2014](http://web.stanford.edu/~gentzkow/research/CodeAndData.pdf) 

We'd recommend reading the full guide, but briefly outline the sections of "RA Manual: Notes on Writing Code" here so as to give a preview. We also include one example from each section, but there are many other examples in the original paper.

---

### Code should be logical

* Despise redundancy
* Separate functional code and metadata
* Use the right data structures
* Make your functions shy
* Use overriding methods instead of switches where appropriate

*Example: use the right data structures*

Instead of writing a function like:

    myfunction <- function(name, surname, age, height) {
      if (age < 18) {}
    }

We can use a structure like an object or array for that.

    myfunction <- function(person) {
      if (person.age < 18) { }
    }

This would make the code easier to read and maintain.

---

### Code should be readable

* Keep it short
* Order your functions for linear reading
* Choose descriptive names
* Use white space and indents to make code scannable
* Pay special attention to coding algebra
* Make logical switches intuitive
* Use enough comments and no more
* Be consistent
* Avoid commands that make code hard to read

*Example: choose descriptive names*

It might be easier for other users to read and adapt existing code if the variables, folders, classes and other elements have simple and intuitive names. So prefer writing code like:

    calculate_status <- function(person) {}

Rather than:

    cs <- function(p) {}

---

### Code should be robust

* Check for errors
* Write tests

*Example: check for errors*

Users can use your code with different parameters and in different environments. It is a good practice to include code that check for erroneous values and provide clear feedback.

    myfunction <- function(x, y) {
      return x / y;
    }

    myfunction <- function(x, y) {
      if (y == 0) 
        return 'y must be different than zero!';
      return x / y; 
    }

Of course you can also write tests to make sure your verifications are working correctly ;-)

---

### Code should be efficient

* Profile slow code relentlessly
* Store "too much" output from slow code
* Separate slow code from fast code

---
