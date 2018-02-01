@echo off

cd ..\fduthesis
git pull

mkdir tmp
copy source\*.dtx tmp\
cd tmp
xetex fduthesis.dtx

copy /Y *.cls ..\..\working\
copy /Y *.sty ..\..\working\
copy /Y *.def ..\..\working\

cd ..
rmdir /S tmp
