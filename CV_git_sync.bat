SETCONSOLE /hide
@echo Started execution: %date% %time% >> log.txt
git checkout master
git fetch origin
git merge origin/master

git add .
git commit -m "Automatic commit"
git push

@echo Completed %date% %time% >> log.txt
@echo ___________________________________ >> log.txt