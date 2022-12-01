#! /bin/bash
qrencode -o qr.png "https://docs.openenergymonitor.org"
lpr -P pi-Brother_QL-720NW -# 10 qr.png
rm qr.png
