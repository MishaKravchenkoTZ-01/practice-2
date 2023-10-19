#! /bin/bash

action="$1"
name="$2"
database="$3"
database="database.txt"
touch "$database"

function new(){
echo "$name $email" >> "$database"
}

function list(){
cat "$database"
}

function lookup(){
grep "$name" "$database" | sed "s/$name//g"
}

function remove(){
sed -i "/$name/d" "$database"
}

function clear(){
echo -n > "$database"
}

if [ "$action" = "new" ]
then
new
elif [ "$action" = "list" ]
then
list
elif [ "$action" = "lookup" ]
then
lookup
elif [ "$action" = "remove" ]
then
remove
elif [ "$action" = "clear" ]
then
clear
fi
