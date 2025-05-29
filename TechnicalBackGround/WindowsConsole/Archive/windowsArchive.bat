SETLOCAL
SET archivator="C:\Program Files\7-Zip\7z.exe"

mkdir gerasimenko
echo "Vadim Gerasimenko" > gerasimenko\1.txt
copy gerasimenko\1.txt gerasimenko\2.txt

%archivator% a -tzip -ssw -mx1 gerasimenko.zip gerasimenko\*
rmdir /s /q gerasimenko