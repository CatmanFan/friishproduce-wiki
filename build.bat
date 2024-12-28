@echo off
git add .
cls
set /p txt=Message to commit: 
cls
git commit -m "%txt%"
git push -u origin main
start bundle install
cls
echo Done. To test the site locally, please run the following command:
echo   bundle exec jekyll serve
echo.
echo Press any key to exit.
pause >nul