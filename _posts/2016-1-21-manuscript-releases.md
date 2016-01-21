---
layout: page
title: "Github 'Releases' as Academic Manuscript Milestones"
---

I just [posted](http://mindymallory.github.io/2016/01/21/my-reproducable-workflow.html) about my experiences in moving toward reproducable research in a field where Word reigns as the favorate manuscript preparation tool. 

Today, I had a bit of an epiphany about this process. I began working on converting a manuscipt for journal submission that was recently presented at a [conference](http://www.farmdoc.illinois.edu/nccc134/) and posted in the conference [proceedings](http://www.farmdoc.illinois.edu/nccc134/Year_search.asp?Type=Year&Year=2015). I stuggled with what to do about versioning the file. I didn't want to rely on the trused convention of renaming the file or creating a folder within the repository where the journal submission would live. I also didn't want to rely on going back to a specific 'commit' to find the proceedings version of the paper. 

Github was created by software developers for software developers. Software gets released in incremental versions (re: v1.2.3 for example). Github has built in the ability to take a snapshot of your repository and desiganate it as a 'release'. 

It dawned on me.

When we submit an academic paper to a conference, that is a 'release'. When we submit the manuscript to the first journal, that is 'release'. When we are asked for revisions, those revisions are a 'release'. 

So, I created a [release](https://github.com/mindymallory/BBOBAS/releases) of the repository where this paper and analysis lives. 

It occured to me that some conventions in naming the releases would be useful. When you click on the 'Releases' link in a Github repository and then choose 'Draft a new release'. You see something like this: 

![](images/release.png)
