@echo off
set YEAR=%date:~0,4%
set MONTH=%date:~5,2%
set DAY=%date:~8,2%
set DATE=%YEAR%%MONTH%%DAY%
set FILE=daily\%YEAR%\%MONTH%\%DATE%.md

if not exist "daily\%YEAR%\%MONTH%" mkdir "daily\%YEAR%\%MONTH%"

if not exist "%FILE%" (
  echo # %DATE% > "%FILE%"
)

where code >nul 2>&1 && code "%FILE%"
