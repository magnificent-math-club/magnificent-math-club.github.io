## Description

Sources for the website https://magnificent-math-club.github.io/

## Initial Setup

This is a one-time only, for setting up github page to publish the website.

Instructions can be found [here](https://bwaycer.github.io/hugo_tutorial.hugo/tutorials/github-pages-blog/).

## How to publish updates
### Prerequisite
* Supported OS: Linux or Mac OS. 
* Software used:
    - git
    - hugo
    - homebrew (recommended if using Mac OS)
    - vim (recommended)

### Clone respository
Check out the repository to your local folder:
```
git clone https://github.com/magnificent-math-club/magnificent-math-club.github.io
```
You all do all future updates using the same folder.

### Workflow to update and publish contents
* Edit or add files in the contents folder.
* Publish contents by running the following command:
```
 bash publish.sh
```
The script will do the following:

    1. ask for a brief description of the changes (to be used as git commit comment),
    2. add all changes in the folder and commit,
    3. run a script to generate the website,
    4. push changes to github.

After publishing, wait for one minute and refresh the [website](https://magnificent-math-club.github.io/).
