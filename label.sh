#! /bin/bash

# Requires glabels
# LPR printer

# Either run with default options >  `./lablel
# Or specify template & printer ./label <template.glables> <LPR printer>

# Number of random codes to generate
QTY=12

# Number of characters per raandom coe
CHARACTERS=9

# filename to save codes
SERIAL="serial.csv"

# Filename to save generated labels
GENERATED="output.pdf"

# Default glables template
TEMPLATE="openevse.glabels"

# Default Printer
PRINTER="Kyocera FS-C5150DN"

##############################################################
echo -e "\nOpenEnegyMonitor label generator V1.0\n"
> serial.csv

echo -e "Generating random strings...:\n"
for (( i=1; i<=$QTY; i++))
	do
    STR=$(tr -dc a-f0-9 < /dev/urandom | dd bs=$CHARACTERS count=1 2> /dev/null)
    echo $STR >> $SERIAL
	done

cat $SERIAL

if [ "$1" != "" ]; then
    echo -e "\nGenerating labels using $1 template\n"
    glabels-3-batch --input=$SERIAL $1
else
    echo -e "\nGenerating labels using $TEMPLATE template\n"
    glabels-3-batch --input=$SERIAL $TEMPLATE
fi

echo

if [ "$2" != "" ]; then
    read -p "$GENERATED generated press Enter to print on $2 or [CTRL+C] to exit"
    lpr -P $2
else
    read -p "$GENERATED generated press Enter to print on $PRINTER or [CTRL+C] to exit"
    lpr -P $PRINTER $GENERATED
fi






