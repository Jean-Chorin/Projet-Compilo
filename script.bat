echo off
git add .
set /p message= message du commit :
git commit -m "%message%"
git pull
git push
