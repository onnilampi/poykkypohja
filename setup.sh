#!/bin/bash

checkup(){
	read -n1 -rsp $'After you\'ve read the text above, press any key.\nExit with CTRL+C.\n'
}


clear

[ $UID -eq 0 ] && echo "Do not run this script as a super user, package installation will ask for password on its own." && exit 1

echo "Installing packages require root permissions. Here is a short description of why these are installed:"
echo "Packages to install:"
echo " * texlive, texlive-latex-recommended, texlive-latex-extra, texlive-lang-european - LaTeX-packages."
echo " * make - Using Makefiles is an easy way to automate the compiling of LaTeX-documents."
echo " * tree - Tool for printing the directory tree."
echo " * inotify-tools - Enables the macro to automatically compile the document after saving changes."
echo ""
checkup

clear

sudo apt-get install texlive texlive-latex-recommended texlive-latex-extra texlive-lang-european make tree inotify-tools 
echo ""
echo ""
echo ""
echo ""


echo "Everything should now be installed. The next step is to compile the documents. This might take a while."
echo ""

checkup

clear

make

clear

tree -dl
echo "All done!"
