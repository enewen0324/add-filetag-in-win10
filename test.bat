@echo off
set filepath=D:\mytag.csv
REM echo "Filename: %1"
if exist %filepath% (
    echo filename,tag
    echo -----------------
    type %filepath% | find "%1"
) else (
    echo filename,tag
    echo -----------------
    echo FILENAME,TAG >> %filepath%
)
set /P act="Please input tag(Use space to seperate each tag): "
for %%a in (%act%) do (
    echo %1,%%a >> %filepath%
REM filename,tag >> mytag.csv 
)
