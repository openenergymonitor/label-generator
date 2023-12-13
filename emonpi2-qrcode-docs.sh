#! /bin/bash
qrencode -o qr.png "https://docs.openenergymonitor.org/emonpi2/index.html"
lpr -P pi-Brother_QL-720NW -# 10 qr.png
rm qr.png
