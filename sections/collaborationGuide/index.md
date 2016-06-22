---
layout: post
title:  Collaboration Guide
date:   2014-03-31 
categories: 
---

## github and git

Reproducibility practices for scientific code are sorely needed. Now is the time to come together as a scientific community to decide what works and what doesn't.  

One of the best ways to collaborate on a digital project is to use the version control system, git, and have it freely available  through an online hosting system, in this case [github](https://github.com/). Every file that is used to build this guide is on a [repository called reproducibility-guide on  github](https://github.com/ropensci/reproducibility-guide). 

There are several ways to contribute to this website.  You don't have to contribute code.  No matter if you are a programmer new to science, or a scientist new to programming, your perspective is needed for the advancement of scientific reproducibility. 

## Issues

One way to begin contributing is to start an [issue](https://github.com/ropensci/reproducibility-guide/issues?state=open). Issues are how we discuss the project.  It can be as large as changing the entire structure of the site, or small, like adding a new tool to the Tools section. 

Everyone who watches the project is alerted when an issue has been established, and everyone can comment on it. If you have an idea for making the site better, or just want to start a discussion on reproducibility in sciences, please start a new issue.  

If you're not sure where to start, take a look at [already started issues](https://github.com/ropensci/reproducibility-guide/issues?state=open).  Feel free to voice your opinion on any issue already mentioned, come join the discussion!  

If you understand the basics of git, maybe you would like to take action and fix the issue by adding code to the repository.

## Contributing to Codebase 

Each collaborative project on github has an ecosystem, so the rules for collaborating are different depending on the project.  Often housed in a CONTRIBUTING.md file, there are rules that have been adapted to suit the functionality of the project.  For our project, we are flexible on how you contribute and encourage newbie git collaborators: everyone has to start somewhere.  Here is a general guide for how you can contribute to the basecode for this site. If you are a beginning git user, this may seem a bit confusing, but we promise it becomes clear after trying it. 

### Tiny Tutorial on Contributing to Repositories
*(requires base knowledge of git. Remixed from Karl Broman's [github Guide - Contribute to Someone's repository](http://kbroman.github.io/github_tutorial/pages/fork.html)*

- Say you want to contribute changes to our code repository.

- Go to the repository on github.  (This site is from `ropensci`, and is called `reproducibility-guide`, you'll find it at `https://github.com/ropensci/reproducibility-guide`.

- Click the fork  <i class="fa fa-code-fork"></i> button at the top right.

- You'll now have your own copy of that repository in your github account.

- Open a terminal/shell. 

-  Type

        $ git clone https://github.com/username/reproducibility-guide.git

where `username` is _your_ username.

- You'll now have a local copy of _your version_ of that repository called "origin"

- Add a connection to the original owner's repository and calling it "master".
    
        $ git remote add master https://github.com/ropensci/reproducibility-guide.git

- You can check if this worked with the command.  You should see the connection to _your version_ of the repository and the ropensci "master"
version.

        $ git remote -v

- Now you can make changes to files.  The main branch for the Reproducibility Guide site is `gh-pages`.  You may also start another branch for to work on.  To check which branch you are on type `git branch`.

- `git add` and `git commit` those changes

- `git push` them back to [github](http://github.com).  These will go
  to _your version_ of the repository.

- Go to _your version_ of the repository on github.

- Click the green &ldquo;Pull Request&rdquo; button at the top of the page.

- Note that the ropensci repository will be on the left and _your repository_ will be on the right.

- Give a short explanation of the changes and click the &ldquo;Send pull request&rdquo; button.

## Pulling others’ changes

- Before you make further changes to the repository, you should check that your version is up to date relative to your friend’s version.

- Go into the directory for the project and type:

        $ git pull ropensci master

This will pull down and merge all of the changes that your friend has made.

- Now push them back to your github repository.

        $ git push

## Add yourself to the contributors section

Now that you have contributed, you can add yourself to the [list of contributors](http://ropensci.github.io/reproducibility-guide/contributors/).  The file to add your name to is located in the contributors folder in the main directory, just add your name to the index.md file housed [here](https://github.com/ropensci/reproducibility-guide/tree/gh-pages/contributors).

## Resources

[Full git/github](http://kbroman.github.io/github_tutorial/) - Karl Broman 

[How to Collaborate on github](http://code.tutsplus.com/tutorials/how-to-collaborate-on-github--net-34267) - tuts+

