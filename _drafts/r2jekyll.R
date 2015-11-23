# This script takes the .Rmd document and converts it to a .md document 
# that can be used by Jekyll/Github Pages to build a website. Change 
# filename to the desired one in the '~/_drafts' folder. 
# Modified from Nicole White's blog post on blogging with rmarkdown and Jekyll: 
# http://nicolewhite.github.io/2015/02/07/r-blogging-with-rmarkdown-knitr-jekyll.html


library(knitr)

# Get the filename given as an argument in the shell.
#args = commandArgs(TRUE)
filename = 'test2.Rmd'

# Check that it's a .Rmd file.
if(!grepl(".Rmd", filename)) {
  stop("You must specify a .Rmd file.")
}

# Knit and place in _posts.
dir = paste0("_posts/", Sys.Date(), "-")
output = paste0(dir, sub('.Rmd', '.md', filename))
knit(paste0("_drafts/",filename), output)


