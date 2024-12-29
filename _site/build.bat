@echo off
git add .
cls
set txt=
set /P "txt=Message to commit: "
cls

set "TRUE="
IF NOT DEFINED txt set TRUE=1
IF "%txt%"=="" set TRUE=1
IF defined TRUE (
    echo No commit message provided, will not push.
    goto :RUN
) else (
    git commit -m "%txt%"
    git push -u origin main
)

:RUN
bundle install & bundle exec jekyll serve