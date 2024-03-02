#!/bin/bash
#
#vs $PACKAGE_NAME and vs codium config script
#
cat << "EOF"
  
██╗   ██╗███████╗     ██████╗ ██████╗ ██████╗ ███████╗       ██╗   
██║   ██║██╔════╝    ██╔════╝██╔═══██╗██╔══██╗██╔════╝       ██║   
██║   ██║███████╗    ██║     ██║   ██║██║  ██║█████╗      ████████╗
╚██╗ ██╔╝╚════██║    ██║     ██║   ██║██║  ██║██╔══╝      ██╔═██╔═╝
 ╚████╔╝ ███████║    ╚██████╗╚██████╔╝██████╔╝███████╗    ██████║  
  ╚═══╝  ╚══════╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝    ╚═════╝  
                                                                   
 ██████╗ ██████╗ ██████╗ ██╗██╗   ██╗███╗   ███╗                   
██╔════╝██╔═══██╗██╔══██╗██║██║   ██║████╗ ████║                   
██║     ██║   ██║██║  ██║██║██║   ██║██╔████╔██║                   
██║     ██║   ██║██║  ██║██║██║   ██║██║╚██╔╝██║                   
╚██████╗╚██████╔╝██████╔╝██║╚██████╔╝██║ ╚═╝ ██║                   
 ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚═╝     ╚═╝                   

EOF
# Name of the package to check
PACKAGE_NAME="CODE"
echo "CHECKING IF VSCODE IS INSTALLED OR NOT"
# Check if the package is installed
if pacman -Q $PACKAGE_NAME &> /dev/null; then
    echo "VS CODE IS  INSTALLED."
    echo
    echo "installing Visual studio code Extension"
    echo 
    echo "INSTALLING C/C++ EXTENSION PACK"
    $PACKAGE_NAME --install-extension ms-vscode.cpptools-extension-pack
    echo
    echo "INSTALLING $PACKAGE_NAME RUNNER"
    $PACKAGE_NAME --install-extension formulahendry.code-runner
    echo
    echo "INSTALLING DOXYGEN DOCUMENTATION GENERATOR"
    $PACKAGE_NAME --install-extension cschlosser.doxdocgen
    echo
    echo "INSTALLING PRETIER : CODE FORMATTER"
    $PACKAGE_NAME --install-extension esbenp.prettier-vscode
    echo
    echo "INSTALLING EXTENSION PACK FOR JAVA"
    $PACKAGE_NAME --install-extension vscjava.vscode-java-pack
    echo
    echo "INSTALLING ONE DARK THEME"
    $PACKAGE_NAME --install-extension azemoh.theme-onedark


else
    echo "CODE is not installed."
fi


echo "CHECKING CODIUM IS INSTALLED OR NOT"

PACKAGE_NAME="codium"

# Check if the package is installed
if pacman -Q $PACKAGE_NAME &> /dev/null; then
    echo "$PACKAGE_NAME is installed."
    echo "installing Visual studio $PACKAGE_NAME Extension"
    echo 
    echo "INSTALLING C/C++ EXTENSION PACK"
    $PACKAGE_NAME --install-extension ms-vscode.cpptools-extension-pack
    echo
    echo "INSTALLING $PACKAGE_NAME RUNNER"
    $PACKAGE_NAME --install-extension formulahendry.$PACKAGE_NAME-runner
    echo
    echo "INSTALLING DOXYGEN DOCUMENTATION GENERATOR"
    $PACKAGE_NAME --install-extension cschlosser.doxdocgen
    echo
    echo "INSTALLING PRETIER : $PACKAGE_NAME FORMATTER"
    $PACKAGE_NAME --install-extension esbenp.prettier-vscode
    echo
    echo "INSTALLING EXTENSION PACK FOR JAVA"
    $PACKAGE_NAME --install-extension vscjava.vscode-java-pack
    echo
    echo "INSTALLING ONE DARK THEME"
    $PACKAGE_NAME --install-extension azemoh.theme-onedark


else
    echo "$PACKAGE_NAME is not installed."
fi
