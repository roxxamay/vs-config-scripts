#!/bin/bash
#
#vs code and vs codium config script
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
PACKAGE_NAME="code"

# Check if the package is installed
if pacman -Q $PACKAGE_NAME &> /dev/null; then
    echo "$PACKAGE_NAME is installed."
    echo "installing Visual studio code Extension"
    echo 
    echo "INSTALLING C/C++ EXTENSION PACK"
    code --install-extension ms-vscode.cpptools-extension-pack
    echo
    echo "INSTALLING CODE RUNNER"
    code --install-extension formulahendry.code-runner
    echo
    echo "INSTALLING DOXYGEN DOCUMENTATION GENERATOR"
    code --install-extension cschlosser.doxdocgen
    echo
    echo "INSTALLING PRETIER : CODE FORMATTER"
    code --install-extension esbenp.prettier-vscode
    echo
    echo "INSTALLING EXTENSION PACK FOR JAVA"
    code --install-extension vscjava.vscode-java-pack
    echo
    echo "INSTALLING ONE DARK THEME"
    code --install-extension azemoh.theme-onedark


else
    echo "$PACKAGE_NAME is not installed."
fi
