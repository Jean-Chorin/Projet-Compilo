#!/bin/bash
echo -n "Message : "
read message
echo "-------------------------------git add : -------------------------------"
git add .
git status
echo "-------------------------------git commit : -------------------------------"
git commit -m "$message"
git status
echo "-------------------------------git fetch : -------------------------------"
git fetch
git status
echo "-------------------------------git rebase : -------------------------------"
git rebase
git status
echo "-------------------------------git push : -------------------------------"
git push
git status
