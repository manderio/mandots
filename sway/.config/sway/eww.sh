#!/bin/sh
~/.local/bin/eww kill;
~/.local/bin/eww daemon; 
sleep 1; 
~/.local/bin/eww open-many bar0 bar1 bar2
