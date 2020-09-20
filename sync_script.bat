@echo Started execution: %date% %time% >> tasklog.txt

SET prebranch = git branch
DEL .git\index.lock
git checkout master
git fetch origin
git merge origin/master >> tasklog.txt

git add .
git commit -m "Automatic commit"
git push >> tasklog.txt

git checkout %prebranch

start /min B:\GDRIVE\CODE\ayushman1024.github.io\sync_script.bat

@echo Completed at %date% %time% >> tasklog.txt
@echo ___________________________________ >> tasklog.txt
exit