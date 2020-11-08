#!/bin/bash

echo VO ou VF?; read choix;

while IFS="," read nom francais original; do
    if [ $choix = "VF" ]; then 
    cowsay -f "$nom" "$francais"
    elif [ $choix = "VO" ]; then 
    cowsay -f "$nom" "$original"
    else
        echo "Choix Invalid"
    fi
done < ./blabla.csv