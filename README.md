# Test Repo  

## Current Objective
node version bump on git push to master branch

## Details
• Using husky to employ a post-commit hook  
• The post-commit hook calls a script that compares current branch to 'master' and uses `npm version` to bump the version.  
• The script then pushes the tags so the new version is tagged on the master branch.  
  
---
