@echo off
git add .
cls
set /p txt=Message to commit: 
cls
git commit -m "%txt%"
git push -u origin main
cls
echo Done. To test the site locally, please run the following commands:
echo   bundle install
echo   bundle exec jekyll serve
echo.
echo Press any key to exit.
pause >nul