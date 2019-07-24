#!/bin/bash
currentbranch=$(git rev-parse --abbrev-ref HEAD);
if [ "$currentbranch" = "master" ]; then 
  echo "Commiting to Master branch, patching version number";
  npm version --no-commit-hooks patch -m "Version bumped to %s";
else 
  echo "Commiting to $currentbranch branch. Not master, version number unchanged";
  currentversion=$(cat package.json | grep '"version":');
  echo "$currentversion";
fi

