@echo off
git add .
cls
set "txt=default"
set /p "txt=Message to commit:"
cls
IF "%txt%"=="" (
    echo No commit message provided, will not push.
    goto :RUN
)
git commit -m "%txt%"
git push -u origin main

:RUN
start /wait bundle install
bundle exec jekyll serve
cls
echo Done. Press any key to exit.
pause >nul