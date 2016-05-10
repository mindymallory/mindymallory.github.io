---
layout: post
title: "My Reproducible Workflow: Collaboration is the Tricky Part"
---

I have been slowly migrating to a reproducible (and automatically refreshed) workflow. I spent many hours in grad school updating manuscript text and tables with results from minor tweaks of my estimation procedure. A small change resulted in a full day's work. I knew there had to be a better way. 

In 2012 I committed to learning R, and by chance picked up a copy of [Reproducible Research with R and R Studio](http://www.amazon.com/Reproducible-Research-Studio-Chapman-Series/dp/1466572841) by [Christopher Gandrud](http://christophergandrud.blogspot.com/). and since then I have become a full fledged [RStudio](https://www.rstudio.com/), [rmarkdown](http://rmarkdown.rstudio.com/), and [knitr](http://yihui.name/knitr/) fan (I wanted to say aficionado here, but I don't feel I'm much of an expert). Now I basically do all of my statistical analysis, academic writing, and other word processing in markdown and the RStudio IDE. My academic projects live on [Github](https://github.com/mindymallory) for version control, and lightweight word processing-type projects live in my Dropbox or Box folders. 

"{{ more }}"

I'm still working out the perfect workflow; for example, most of my colleagues use Word to produce manuscripts. When they return a manuscript edited in Word, I have to manually make those edits in the .rmd file to maintain the reproducible document. [This](http://www.writage.com/) tool looks like it would almost work, but of course, to preserve reproducibility the conversion would have to go from .docx to .rmd, which is not possible. A conversion from .docx to .md loses the r code chunks that keep the document reproducible. I think this issue can only be solved by manually incorporating their edits in the .rmd file. 

Another issue is that knitting to .docx creates some problems in the first place. Pandoc can only translate markdown tags to heading or paragraph formatting in Word documents. This means paragraph formatting gets applied to tables, and always look terrible. Inevitably this requires editing by hand before you send the .docx document to your co-author. This problem has a simple work around, I think. The manuscript can be written in one .rmd file that gets knitted to a .docx file, which coauthors can readily edit, while tables and figures are prepared in a separate .rmd document that gets knitted to a .pdf file.   
