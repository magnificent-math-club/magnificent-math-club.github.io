## Description

Sources for the website https://magnificent-math-club.github.io/

## Instructions

* For initial setup, follow the deployment instructions on (https://bwaycer.github.io/hugo_tutorial.hugo/tutorials/github-pages-blog/).

* To update the webiste after updating posts, run the following command in the working directory:
```
 bash publish.sh
```
The script will do the following:
* ask for a brief description of the changes (to be used as git commit comment),
* add all changes in the folder and commit
* run a script to generate the website
* push changes to github
