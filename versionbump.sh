#!/bin/bash
currentbranch=$(git rev-parse --abbrev-ref HEAD);
if [ "$currentbranch" = "master" ]; then 
  echo "Commiting to Master branch, patching version number";
  npm version patch --no-git-tag-version && git add package.json package-lock.json;
else 
  echo "Commiting to $currentbranch branch. Not master, version number unchanged";
  currentversion=$(cat package.json | grep '"version":');
  echo "$currentversion";
fi

