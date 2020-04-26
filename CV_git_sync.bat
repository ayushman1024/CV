git checkout master
git fetch origin
git merge origin/master

git add .
git commit -m "Automatic commit"
git push

@echo Executed %date% %time% >> log.txt