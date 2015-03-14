#!/bin/bash
echo -n "Message : "
read message
git add .
git status
git commit -m "$message"
git status
git fetch
git status
git rebase
git status
git push
git status
