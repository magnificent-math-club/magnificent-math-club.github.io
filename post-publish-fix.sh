#!/bin/bash
echo "If you need to directly modify the pages in the public folder, you can do so and then run this script to publish"
echo "Press ENTER to continue publish, or CTRL-C to abort."
read x
cd public && git add --all && git commit -m "Publishing to gh-pages (publish.sh)" && cd ..
git push origin gh-pages
