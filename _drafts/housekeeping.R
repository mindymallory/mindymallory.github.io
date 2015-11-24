###############################################################################################################
# This script takes the .Rmd document and converts it to a .md document 
# that can be used by Jekyll/Github Pages to build a website. Change 
# filename to the desired one in the '~/_drafts' folder. 
# Modified from Nicole White's blog post on blogging with rmarkdown and Jekyll: 
# http://nicolewhite.github.io/2015/02/07/r-blogging-with-rmarkdown-knitr-jekyll.html
#################################

library(knitr)

filename = 'test2.Rmd'

# Check that it's a .Rmd file.
if(!grepl(".Rmd", filename)) {
  stop("You must specify a .Rmd file.")
}

# Knit and place in _posts.
dir = paste0("_posts/", Sys.Date(), "-")
output = paste0(dir, sub('.Rmd', '.md', filename))
knit(paste0("_drafts/",filename), output)

# Now run on the cmd line
# $ cd C:\Users\mallorym\Documents\Github\mindymallory.github.io
# if I want to test locally. Otherwise push to github and see it live. 

###############################################################################################################
# This script authenticates into my twitter account and posts the title and link of the most recent blog post (or it will soon).  

# Github, for most recent version
#     install.packages(c("devtools", "rjson", "bit64", "httr"))
#     devtools::install_github("geoffjentry/twitteR")
#     library(devtools)
#     install_github("geoffjentry/twitteR")
#     library(twitteR)

# CRAN
install.packages("twitteR", repos="http://cran.rstudio.com/", dependencies=TRUE)
library(twitteR)

api_key <- Sys.getenv("twitter_api_key")
api_secret <- Sys.getenv("twitter_api_secret")
access_token <- Sys.getenv("twitter_access_token")
access_token_secret <- Sys.getenv("twitter_access_token_secret")
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

# The following lines need to be edited to tweet the title and build the filename of the most recent post as text of the tweet. Tweet posting works though. 
tweettxt <- "Testing out a script"
tweettxt <- "FYI - It worked"
tweet(tweettxt)