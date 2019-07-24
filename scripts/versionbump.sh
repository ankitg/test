#!/bin/bash
currentbranch=$(git rev-parse --abbrev-ref HEAD);
if [ "$currentbranch" = "master" ]; then
  lastcommitmsg=$(git log -1 --pretty=%B);
  echo "Last commit was: $lastcommitmsg";
  if [[ ! "$lastcommitmsg" == "[bump]"* ]]; then
    echo "Commiting to Master branch, patching version number";
    npm version -m patch "[bump] Version bumped to %s";
    # git add package.json package-lock.json;
  else
    echo "Not bumping version on master. Last commit was $lastcommitmsg";
  fi
else
  echo "Commiting to $currentbranch branch. Not master, version number unchanged";
  currentversion=$(cat package.json | grep '"version":');
  echo "$currentversion";
fi