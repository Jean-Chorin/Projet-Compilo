echo "-------------------------------git add : -------------------------------"
git add .
git status
set /p message= message du commit :
echo "-------------------------------git commit : -------------------------------"
git commit -m "%message%"
git status
echo "-------------------------------git pull : -------------------------------"
git pull
git status
echo "-------------------------------git push : -------------------------------"
git push
git status
