#! /bin/bash
qrencode -o qr.png $1
#print $1
#read -p "QR code generated press [Enter] to print or [CTRL+C] to exit"
lpr -P pi-Brother_QL-720NW qr.png
rm qr.png
