#! /bin/bash

# Requires glabels
# LPR printer

# Either run with default options >  `./lablel
# Or specify template & printer ./label <template.glables> <LPR printer>


# Filename to save generated labels
GENERATED="output.pdf"


# Default Printer
PRINTER="pi-Kyocera_FS-C5150DN"
OPTIONS="-o KCEcoprint=Off -o MediaType=Transparency"
#OPTIONS="-o KCEcoprint=Off"
##############################################################
echo -e "\nOpenEnegyMonitor Glabel (No Serial) Print V1.0\n"


if [ "$1" != "" ]; then
    echo -e "\nGenerating labels using $1 template...\n"
    glabels-3-batch $1
fi

echo

if [ "$2" != "" ]; then
    read -p "$GENERATED generated press Enter to print on $2 or [CTRL+C] to exit"
    lpr -P $2
else
    read -p "$GENERATED generated press Enter to print on $PRINTER with options $OPTIONS or [CTRL+C] to exit"
    lpr -P $PRINTER $GENERATED $OPTIONS
fi
