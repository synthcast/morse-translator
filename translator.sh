#!/bin/bash

printf "clear; - clear terminal\nexit; - exit translator\nswitch; - switch translation method\n\n"

text () {
while true
do
printf "\n"	
read -p "Enter morse code: " INPUT
printf "\n"

echo $INPUT | sed -e 's/\.-/A/g' -e 's/-\.\.\./B/g' -e 's/-A\./C/g' -e 's/-\.\./D/g' -e 's/\./E/g' \
-e 's/EAE/F/g' -e 's/--E/G/g' -e 's/EEEE/H/g' -e 's/EE/I/g' -e 's/A--/J/g' -e 's/-A/K/g' -e 's/AI/L/g' \
-e 's/--/M/g' -e 's/-E/N/g' -e 's/M-/O/g' -e 's/AN/P/g' -e 's/-K/Q/g' -e 's/AE/R/g' -e 's/IE/S/g' \
-e 's/-/T/g' -e 's/EA/U/g' -e 's/IA/V/g' -e 's/AT/W/g' -e 's/NA/X/g' -e 's/KT/Y/g' -e 's/TD/Z/g' \
-e 's/JT/1/g' -e 's/EJ/2/g' -e 's/VT/3/g' -e 's/SA/4/g' -e 's/HE/5/g' -e 's/BE/6/g' -e 's/TB/7/g' \
-e 's/MD/8/g' -e 's/MG/9/g' -e 's/MO/0/g'  -e 's/AAA/\./g' -e 's/GW/,/g' -e 's/UD/?/g' -e 's/KW/!/g' \
-e 's/MB/:/g' -e 's/AF/"/g' -e "s/WG/'/g" -e 's/AR/+/g' -e 's/BA/-/g' -e 's/DA/=/g' -e 's/KN/(/g' \
-e 's/KK/)/g' -e 's/LE/\&/g' -e 's/TF/\//g' -e 's/AC/@/g' 

printf "\n\n"
commands

if [[ $INPUT == "exit;" ]]; then
      clear; break
elif [[ $INPUT == "switch;" ]]; then
        clear; morse; break
fi
done
}

morse () {
while true
do
printf "\n"
read -p "Enter text: " INPUT
printf "\n"

echo $INPUT | sed -e 's/ /\|/g' -e 's/\./ .-.-.- /g' -e 's/,/ --..-- /g' -e 's/?/ ..--.. /g' \
-e 's/!/ -.-.-- /g' -e 's/:/ ---... /g' -e 's/"/ .-..-. /g' -e "s/'/ .----. /g" -e 's/+/ .-.-. /g' \
-e 's/=/ -...- /g' -e 's/(/ -.--. /g' -e 's/)/ -.--.- /g' -e 's/&/ .-... /g' -e 's/@/ .--.-. /g'  \
-e 's/A/\ .- /g;s/a/\ .- /g' -e 's/B/ -\.\.\. /g;s/b/ -\.\.\. /g' -e 's/C/ -\.-\. /g;s/c/ -\.-\. /g' \
-e 's/D/ -\.\. /g;s/d/ -\.\. /g' -e 's/E/ \. /g;s/e/ \. /g' -e 's/F/ \.\.-\. /g;s/f/ \.\.-\. /g'  \
-e 's/G/\ --\. /g;s/g/ \--\. /g' -e 's/H/ \.\.\.\. /g;s/h/ \.\.\.\. /g'  -e 's/I/ \.\. /g;s/i/ \.\. /g'  \
-e 's/J/ \.--- /g;s/j/ \.--- /g' -e 's/K/ -\.- /g;s/k/ -\.- /g' -e 's/L/ \.-\.\. /g;s/l/ \.-\.\. /g' \
-e 's/M/ -- /g;s/m/ -- /g' -e 's/N/ -\. /g;s/n/ -\. /g'  -e 's/O/ --- /g;s/o/ --- /g' \
-e's/P/ \.--\. /g;s/p/ \.--\. /g' -e 's/Q/ --\.- /g;s/q/ --\.- /g'  -e 's/R/ \.-\. /g;s/r/ \.-\. /g' \
-e 's/S/ \.\.\. /g;s/s/ \.\.\. /g' -e 's/T/ - /g;s/t/ - /g'  -e 's/U/ \.\.- /g;s/u/ \.\.- /g' \
-e 's/V/ \.\.\.- /g;s/v/ \.\.\.- /g' -e 's/W/ \.-- /g;s/w/ \.-- /g' -e 's/X/ -\.\.- /g;s/x/ -\.\.- /g' \
-e 's/Y/ -\.-- /g;s/y/ -\.-- /g' -e 's/Z/ --\.\. /g;s/z/ --\.\. /g'  -e 's/1/ .---- /g' -e 's/2/ ..--- /g' \
-e 's/3/ ...-- /g' -e 's/4/ ....- /g' -e 's/5/ ..... /g' -e 's/6/ -.... /g' -e 's/7/ --... /g' \
-e 's/8/ ---.. /g' -e 's/9/ ----. /g' -e 's/0/ ----- /g' -e 's/\// -....- /g' -e '0,/ / s///' 

printf "\n\n"
commands 

if [[ $INPUT == "exit;" ]]; then
      clear; break
elif [[ $INPUT == "switch;" ]]; then
	clear; text; break
fi
done
}

commands () {
if [[ $INPUT == "clear;" ]]; then
      clear
fi
}

while true
do
read -p "Enter '1' for morse to text, or '2' for text to morse translation: " TRANSLATION
case $TRANSLATION in
	1) text; break;; 
	2) morse; break;;
	*) printf "\n"; echo "Please enter '1' or '2'";;
esac
done


