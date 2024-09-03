#! /bin/bash


# Default Printer
PRINTER="pi-Kyocera_FS-C5150DN"
OPTIONS="-o KCEcoprint=Off  -o ColorModel=cmyk -o copies=10 -o sides=two-sided-long-edge"


read -p "Printing $1 on $PRINTER with options $OPTIONS press [Enter] to continue or [CTRL+C] to exit"
lpr -P $PRINTER $1 $OPTIONS
