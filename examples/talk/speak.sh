#!/bin/bash

# Usage:
#  speak.sh 0 "Hello World"

wd=$(dirname $0)
script=$wd/eleven-labs.py

python3 $script $1 "$2"

ffplay -autoexit -nodisp -loglevel quiet -hide_banner -i ./audio.mp3
