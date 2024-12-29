@echo off
git add .
cls
echo Message to commit:
set "txt=default"
set /p "txt=[%txt%]"
cls
IF "%txt%"=="" (
    echo No commit message provided, will not push.
    goto :RUN
)
git commit -m "%txt%"
git push -u origin main

:RUN
start (bundle install && bundle exec jekyll serve)
cls
echo Done. Press any key to exit.
pause >nul