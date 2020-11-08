#!/bin/bash

function usage()
{
    echo "Usage: $0 <ficher>"
    exit 1
}
    if [ $# -eq 0 ]; then
    echo Manque un argument
    usage
    elif [ ! -r $1 ]; then
    echo "$1 n'est pas accessible en lecture"
    fi
    
username=$(whoami)
dernier=$(head -n -2 connexions.log | tail -n -1 | cut -d ' ' -f 1)
if [ $username == $dernier ]; then
    echo "Tu es le dernier connecté"
else
    echo "Tu n'est pas le dernier connecté"
fi

echo
echo Nombre de connexions par user:
grep $username connexions.log | wc -l
echo 

echo Nombre utilisateurs connecté au moins 1 fois:
head -n -2 connexions.log | cut -d ' ' -f 1 | sort | uniq | wc -l
echo

echo Nombre machines distantes:
cut -c 60- connexions.log | head -n -2 | sort | uniq | wc -l
echo


for i in $(head -n -2 connexions.log | cut -d ' ' -f 1 | sort | uniq)
do  
    echo "Utilisatuer $i:"
    grep $i connexions.log | cut -d ' ' -f 1 | sort | uniq | wc -l
done
echo
