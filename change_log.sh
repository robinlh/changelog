#!/bin/bash
# git commit format:
# (type of change): useful message
# e.g. (package addtion): added new python package SomePackage to SomeSection 

if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root" 
   exit 1
fi

git log --date-order --date=format:'%Y-%m-%d %H:%M:%S' --pretty="- [%C(cyan)%h%Creset %C(black bold)%ad%Creset%C(auto)%d] %s" > CHANGELOG.md
