#! /bin/bash

# Requires glabels
# LPR printer

echo -e "\nOpenEnegyMonitor label generator V1.0\n"
> serial.csv

echo -e "Generating serial numbers...:\n"
for (( i=1; i<=12; i++))
	do
    STR=$(tr -dc a-f0-9 < /dev/urandom | dd bs=9 count=1 2> /dev/null)
    echo $STR >> serial.csv
	done

cat serial.csv

if [ "$1" != "" ]; then
    echo -e "\nGenerating labels using $1.glabels template\n"
    glabels-3-batch --input=serial.csv $1.glabels
else
    echo -e "\nGenerating labels using openevse.glabels template\n"
    glabels-3-batch --input=serial.csv openevse.glabels
fi

echo
read -p "output.pdf generated press Enter to print or [CTRL+C] to exit"

lpr -P 'Kyocera FS-C5150DN' output.pdf




