#! /bin/bash


# Default Printer
PRINTER="pi-Kyocera_FS-C5150DN"
OPTIONS="-o KCEcoprint=Off -o MediaType=Transparency -o ColorModel=cmyk -o copies=1"


read -p "Printing $1 on $PRINTER with options $OPTIONS press [Enter] to continue or [CTRL+C] to exit"
lpr -P $PRINTER $1 $OPTIONS
