#! /bin/bash


# Default Printer
PRINTER="Server_Kyocera_FS-C5150DN"


read -p "Printing $1 on $PRINTER press [Enter] to continue or [CTRL+C] to exit"
lpr -P $PRINTER $1 -o KCEcoprint=Off -o MediaType=Transparency
