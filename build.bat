@echo off
git add .
cls
set /p txt=Message to commit: 
cls
git commit -m "%txt%"
git push -u origin main
bundle install
start bundle exec jekyll serve
cls
echo Done. Press any key to exit.
pause >nul