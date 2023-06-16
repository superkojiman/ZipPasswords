#!/bin/bash
#
# Script to compress all *.txt files in SecLists/Passwords
# 

if [[ ${#} -ne 1 ]]; then
    echo "Usage: ${0} /path/to/SecLists" 
    exit
fi  

if [[ ! -d ${1} ]]; then 
    echo "${1} not a directory."
    exit
fi 

# Get current working directory
cwd=$(pwd)
mkdir -p Passwords

# Update SecLists
pushd ${1} > /dev/null
git pull 

cd Passwords

find . -type f -name "*.txt" -execdir zip ${cwd}/Passwords/{}.zip {} \; 

popd > /dev/null
