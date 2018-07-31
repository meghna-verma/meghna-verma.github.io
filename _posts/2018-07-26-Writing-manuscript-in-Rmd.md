---
layout: post
title: "Manuscript in Rmd"
date: 2018-07-26
---
I am trying to figure out how to write a manuscript in R markdown. I am going to pen down all the issues that I face along the way on a Mac OSX 10.11.
1. Create a project folder and a subdirectory 'doc' to save the manuscripts.
2. RStudio -> File -> New File -> RMarkdown. 
3. Install, pandoc brew install pandoc
4. Install TinyTex using tinytex::install_tinytex()
5. To facilitate the installtion : tlmgr install collection-fontsrecommended
6. If there is an error : LaTeX Error: File `framed.sty` not found - 
I) Do the following on Terminal- 
i) sudo tlmgr install titling
ii)sudo tlmgr update --self
iii) sudo tlmgr install framed
7. Update TinyTex with devtools::install_github('yihui/tinytex')
8. Create a .bib file with all the citation keys and cite using, [@CiteKey].

Also, <a href="https://stackoverflow.com/questions/51560416/error-when-output-rticlesplos-article-used-in-rmarkdown">here</a> is a link to the StackOverflow question I asked with respect to this issue. 

Happy Writing!!
