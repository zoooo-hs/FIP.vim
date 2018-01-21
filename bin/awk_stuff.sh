#/bin/bash

awk 'BEGIN {FS=":"} {system("tail -n +"$2" "$1" | head -n 15 ")}'
# awk 'BEGIN {FS=":"} {system("echo `pwd`")}'
