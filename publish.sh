#!/bin/bash

which git >/dev/null || (echo 'git is required for this script. Please install it first.' && exit 1)

STEP='git add .'  && $STEP && \
  STEP='git commit' && git commit -m 'updated posts' && \
  STEP='_scripts/publish_toghpages.sh' && $STEP && \
  STEP='git push origin gh-pages' && $STEP && \
  STEP='git push origin master' && $STEP && \
  STEP='Done' && echo 'Done publishing. Pleas wait for 1 minute and then refresh https://magnificent-math-club.github.io/'

export STEP

[ $STEP != Done ] && echo "Failed step is $STEP"
