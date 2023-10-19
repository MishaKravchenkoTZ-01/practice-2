#! /bin/bash

count=0
until [ $count -gt 24 ]
do
currFile=$(ls | wc -l)
touch "$USER$currFile"
((count++))
done