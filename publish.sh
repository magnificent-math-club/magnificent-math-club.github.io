#!/bin/bash

which git 
if [[ $? -ne 0 ]]; then
  echo
  echo -e 'ERROR: git not found.  Please install git first.'
  echo
  exit 1
fi

which hugo 
if [[ $? -ne 0 ]]; then
  echo
  echo -e 'ERROR: hugo not found.  Please install git first.'
  echo -e 'If using homebrew on mac, you can install it with:'
  echo -e '  brew install hugo'
  echo
  exit 1
fi

echo -e 'IN ONE LINE, please briefly describe the changes you made:\n'

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
