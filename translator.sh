#!/bin/bash

echo "/clear - clear terminal"; echo "/quit - exit translator"
while true
do
printf "\n"	
read -p "Enter morse code: " MORSE
printf "\n"

echo $MORSE | sed -e 's/\.-/A/g' -e 's/-\.\.\./B/g' -e 's/-A\./C/g' -e 's/-\.\./D/g' -e 's/\./E/g' -e 's/EAE/F/g' -e 's/--E/G/g' -e 's/EEEE/H/g' -e 's/EE/I/g' -e 's/A--/J/g' -e 's/-A/K/g' -e 's/AI/L/g' -e 's/--/M/g' -e 's/-E/N/g' -e 's/M-/O/g' -e 's/AN/P/g' -e 's/-K/Q/g' -e 's/AE/R/g' -e 's/IE/S/g' -e 's/-/T/g' -e 's/EA/U/g' -e 's/IA/V/g' -e 's/AT/W/g' -e 's/NA/X/g' -e 's/KT/Y/g' -e 's/TD/Z/g' -e 's/JT/1/g' -e 's/EJ/2/g' -e 's/VT/3/g' -e 's/SA/4/g' -e 's/HE/5/g' -e 's/BE/6/g' -e 's/TB/7/g' -e 's/MD/8/g' -e 's/MG/9/g' -e 's/MO/0/g'  -e 's/AAA/\./g' -e 's/GW/,/g' -e 's/UD/?/g' -e 's/KW/!/g' -e 's/MB/:/g' -e 's/AF/"/g' -e "s/WG/'/g" -e 's/AR/+/g' -e 's/BA/-/g' -e 's/DA/=/g' -e 's/KN/(/g' -e 's/KK/)/g' -e 's/LE/\&/g' -e 's/TF/\//g' -e 's/AC/@/g' 
printf "\n\n"

if [[ $MORSE == /quit ]]; then
	clear; break

elif [[ $MORSE == /clear ]]; then
	clear

fi
done
