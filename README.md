# Test Repo  

## Current Objective
node version bump on git push to master branch

## Details
• Using husky to employ a pre-push hook  
• The pre-push hook calls a script that compares current branch to 'master' and uses `npm version` to bump the version.  
• The postversion NPM lifecycle event then calls the script again with an argument pushing the version with its tags.  
• The version number is exposed in the app via `process.env.npm_package_version`  
  
---
