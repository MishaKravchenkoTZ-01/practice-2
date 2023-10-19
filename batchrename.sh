#! /bin/bash

cd $1

for file in *.$2
do
mv -v "$file" "${file%.$2}.$3"
echo "Переіменовую ${file%.*}.$2 на ${file%.*}.$3"
done