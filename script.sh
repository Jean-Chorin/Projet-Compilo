#!/bin/bash
echo -n "Message : "
read message
echo "-------------------------------git add : -------------------------------"
git add .
git status
echo "-------------------------------git commit : -------------------------------"
git commit -m "$message"
git status
echo "-------------------------------git pull : -------------------------------"
git pull
git status
echo "-------------------------------git push : -------------------------------"
git push
git status
