#! /bin/bash
#qrencode -s 2 -m 5 -o qr.png $1 $2
qrencode -s 2 -o qr.png $1 $2
#print $1
#read -p "QR code generated press [Enter] to print or [CTRL+C] to exit"
string=".  $2"
convert  -pointsize 9 "label:$string" "footer.gif"
convert -append "qr.png" "footer.gif" -gravity center  "qr-txt.png"
convert "qr-txt.png" "qr-txt.pdf"
#convert qr.png -append footer.gif -background white -gravity south -composite qr-txt.png
lpr -P pi-Brother_QL-720NW qr-txt.pdf -o landscape
