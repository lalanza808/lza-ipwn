#!/bin/bash

# This script copies the bash folder containing all shell configs to ~/.bash and 
# overwrites the current (usually default) .bashrc, .bash_profile, and .bash/ if it exists.
# Use this script at your own risk. 

echo -e "[!] WARNING!\n"

echo -e "[!] This script overwrites the following files:\n\n"

echo -e "\t- ~/.bashrc"

echo -e "\t- ~/.bash_profile"

echo -e "\t- ~/.bash/\n\n\n"

sleep 3

echo -e "[!] Proceed?\n"

read answer -n 1 -p "[y|n] "

if [[ ${answer} == 'y' || ${answer} == 'Y' ]]
then
	echo -e "[.] Copying rc files over to ~/.bash/\n\n"
	cp -r -f ./bash ~/.bash
	sleep 1
	#
	echo -e "[.] Copying necessary configs\n\n"
	cp -f ~/.bash/configs/.vimrc ~/.vimrc
	cp -f ~/.bash/.bashrc ~/.bashrc
	sleep 1
	#
	echo -e "[.] Sourcing new .bashrc"
	source ~/.bashrc
	sleep 1
	#
	echo -e "[+] Done!\n\nEnjoi\n\n"
	sleep 1
	clear
fi

