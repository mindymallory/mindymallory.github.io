---
layout: post
title: "Github 'Releases' as Academic Manuscript Milestones"
---

I just [posted](http://mindymallory.github.io/2016/01/21/my-reproducable-workflow.html) about my experiences in moving toward reproducable research in a field where Word reigns as the favorate manuscript preparation tool. 

Today, I had a bit of an epiphany about this process. I began working on converting a manuscipt for journal submission that was recently presented at a [conference](http://www.farmdoc.illinois.edu/nccc134/) and posted in the conference [proceedings](http://www.farmdoc.illinois.edu/nccc134/Year_search.asp?Type=Year&Year=2015). I stuggled with what to do about versioning the file. I didn't want to rely on the trused convention of renaming the file or creating a folder within the repository where the journal submission would live. I also didn't want to rely on going back to a specific 'commit' to find the proceedings version of the paper. 

{{ more }}

Github was created by software developers for software developers. Software gets released in incremental versions (re: v1.2.3 for example). Github has built in the ability to take a snapshot of your repository and desiganate it as a 'release'. 

It dawned on me.

When we submit an academic paper to a conference, that is a 'release'. When we submit the manuscript to the first journal, that is 'release'. When we are asked for revisions, those revisions are a 'release'. 

So, I created a [release](https://github.com/mindymallory/BBOBAS/releases) of the repository where this paper and analysis lives. 

It occured to me that some conventions in naming the releases would be useful. When you click on the 'Releases' link in a Github repository and then choose 'Draft a new release'. You see something like this:   

![Releases]({{site.url}}/images/release.PNG)

There is a link to a description of [Semantic Versioning](http://semver.org/), which proposes a philosophy for what the numbers in a release mean. The spirit of the format proposed is great, but the exact categories don't really translate to the context of an academic manuscript. So, I propose the following. 

Given a version number SUBMISSION.REVISION, increment the: 
 
1. MAJOR version when you make a new submission to a journal. 
2. MINOR version when you submit revisions 
    
So when you submit the manuscript to the first journal, release v1.0. If rejected and you submit to the second journal, release version 2.0. If at the second journal revisions are requested, release v2.1. I propose that initial draft for circulation gets the number 0.0, and conference proceedings get the number 0.1.

I'll commit to this convention going forward. Let me know what you think!

