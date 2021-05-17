#!/bin/bash

which git 
if [[ $? -ne 0 ]]; then
  echo -e '\nERROR: git not found.  Please install git first\n'
  exit 1
fi

echo -e 'Please briefly describe the changes you made (text must be on one line):\n'

read COMMIT_MSG

[[ .$COMMIT_MSG == . ]] && COMMIT_MSG="updated posts"

STEP='git add .'  && $STEP && \
  STEP='git commit' && git commit -m "$COMMIT_MSG" && \
  STEP='_scripts/publish_toghpages.sh' && $STEP && \
  STEP='git push origin gh-pages' && $STEP && \
  STEP='git push origin master' && $STEP && \
  STEP='Done' && echo -e '\nPleas wait for 1 minute and then refresh https://magnificent-math-club.github.io/\nStatus: SUCCESS.\n'

export STEP

[ $STEP != Done ] && echo "Failed step is $STEP"
