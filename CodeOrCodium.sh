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

cat << "EOF"

 █████╗ ██╗   ██╗██████╗     ██╗  ██╗███████╗██╗     ██████╗ ███████╗██████╗ 
██╔══██╗██║   ██║██╔══██╗    ██║  ██║██╔════╝██║     ██╔══██╗██╔════╝██╔══██╗
███████║██║   ██║██████╔╝    ███████║█████╗  ██║     ██████╔╝█████╗  ██████╔╝
██╔══██║██║   ██║██╔══██╗    ██╔══██║██╔══╝  ██║     ██╔═══╝ ██╔══╝  ██╔══██╗
██║  ██║╚██████╔╝██║  ██║    ██║  ██║███████╗███████╗██║     ███████╗██║  ██║
╚═╝  ╚═╝ ╚═════╝ ╚═╝  ╚═╝    ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝     ╚══════╝╚═╝  ╚═╝

EOF

#function to install paru
install_paru(){
    echo "INSTALLING PARU......"
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
    cd ..
    echo "PARU INSTALLED SUCCESSFULLY....."
}

#function to install yay
install_yay(){
    echo "INSTALLING YAY......"
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
    cd ..
    echo "YAY INSTALLED SUCCESSFULLY......"
}


if command -v paru &> /dev/null || command -v yay &> /dev/null;then
    echo "PARU OR YAY IS ALREADY INSTALLED.... SKIPPING INSTALLATION CHOICE..."
else
    echo "WHICH AUR HELPER WOULD YOU LIKE TO INSTALL"
    echo "1. PARU"
    echo "2. YAY"
    read -p "ENTER YOUR CHOICE(1/2): " choice

    case $choice in
        1)
            install_paru
            ;;
    
        2)
            install_yay
            ;;
        *)
            echo "Invalid choice. EXITING....."
            exit 1
            ;;
    esac
fi

echo "CONTINUING WITH THE REST OF THE SCRIPT....."
echo
echo

cat << "EOF"
    
██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗      ██████╗ ██████╗ ██████╗ ███████╗     ██████╗ ██████╗      ██████╗ ██████╗ ██████╗ ██╗██╗   ██╗███╗   ███╗
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝     ██╔════╝██╔═══██╗██╔══██╗██╔════╝    ██╔═══██╗██╔══██╗    ██╔════╝██╔═══██╗██╔══██╗██║██║   ██║████╗ ████║
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗    ██║     ██║   ██║██║  ██║█████╗      ██║   ██║██████╔╝    ██║     ██║   ██║██║  ██║██║██║   ██║██╔████╔██║
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║    ██║     ██║   ██║██║  ██║██╔══╝      ██║   ██║██╔══██╗    ██║     ██║   ██║██║  ██║██║██║   ██║██║╚██╔╝██║
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝    ╚██████╗╚██████╔╝██████╔╝███████╗    ╚██████╔╝██║  ██║    ╚██████╗╚██████╔╝██████╔╝██║╚██████╔╝██║ ╚═╝ ██║
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝      ╚═════╝ ╚═════╝ ╚═════╝ ╚══════╝     ╚═════╝ ╚═╝  ╚═╝     ╚═════╝ ╚═════╝ ╚═════╝ ╚═╝ ╚═════╝ ╚═╝     ╚═╝

EOF

echo
echo
echo "INSTALLING VSCODE OR VS CODIUM USING AUR HELPER"
echo "---------MENU--------"
echo
echo "1. VS CODE"
echo "2. VS CODIUM"
echo "3. INSTALLING EXTENSION"
read -p "ENTER YOUR CHOICE(1/2) : " option

    case $option in
        1)
            yay -S --noconfirm --needed visual-studio-code-bin
            paru -S --noconfirm --needed visual-studio-code-bin
            PACKAGE_NAME="code"
            ;;
    
        2)
            yay -S --noconfirm --needed vscodium
            paru -S --noconfirm --needed vscodium
            PACKAGE_NAME="codium"
            ;;
        3)
            install_extension
            ;;
        4)  
            install_font
            ;;
        5)
            copying_setting
            ;;

    esac



install_extension(){
    # Check if the package is installed
if pacman -Q $PACKAGE_NAME &> /dev/null; then
    echo "VS CODE IS  INSTALLED."
    echo
    echo "installing Visual studio code Extension"
    echo 
    echo "INSTALLING C/C++ EXTENSION PACK"
    $PACKAGE_NAME --install-extension ms-vscode.cpptools
    $PACKAGE_NAME --install-extension ms-vscode.cmake-tools
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
    $PACKAGE_NAME --install-extension VisualStudioExptTeam.vscodeintellicode
    $PACKAGE_NAME --install-extension redhat.java
    $PACKAGE_NAME --install-extension vscjava.vscode-java-test
    $PACKAGE_NAME --install-extension vscjava.vscode-maven
    $PACKAGE_NAME --install-extension vscjava.vscode-java-dependency
    $PACKAGE_NAME --install-extension vscjava.vscode-java-debug

    echo
    echo "INSTALLING ONE DARK THEME"
    $PACKAGE_NAME --install-extension azemoh.theme-onedark


else
    echo "VSCODE OR VSCODIUM is not installed."
fi
}


install_font(){
    echo
echo
echo
cat << "EOF"

██╗███╗   ██╗███████╗████████╗ █████╗ ██╗     ██╗     ██╗███╗   ██╗ ██████╗ 
██║████╗  ██║██╔════╝╚══██╔══╝██╔══██╗██║     ██║     ██║████╗  ██║██╔════╝ 
██║██╔██╗ ██║███████╗   ██║   ███████║██║     ██║     ██║██╔██╗ ██║██║  ███╗
██║██║╚██╗██║╚════██║   ██║   ██╔══██║██║     ██║     ██║██║╚██╗██║██║   ██║
██║██║ ╚████║███████║   ██║   ██║  ██║███████╗███████╗██║██║ ╚████║╚██████╔╝
╚═╝╚═╝  ╚═══╝╚══════╝   ╚═╝   ╚═╝  ╚═╝╚══════╝╚══════╝╚═╝╚═╝  ╚═══╝ ╚═════╝ 
                                                                            
███████╗ ██████╗ ███╗   ██╗████████╗███████╗                                
██╔════╝██╔═══██╗████╗  ██║╚══██╔══╝██╔════╝                                
█████╗  ██║   ██║██╔██╗ ██║   ██║   ███████╗                                
██╔══╝  ██║   ██║██║╚██╗██║   ██║   ╚════██║                                
██║     ╚██████╔╝██║ ╚████║   ██║   ███████║                                
╚═╝      ╚═════╝ ╚═╝  ╚═══╝   ╚═╝   ╚══════╝                                

EOF

yay -S --noconfirm --needed ttf-victor-mono
paru -S --noconfirm --needed ttf-victor-mono

}


copying_setting(){
    echo
echo
echo

cat << "EOF"

 ██████╗ ██████╗ ██████╗ ██╗   ██╗██╗███╗   ██╗ ██████╗                                               
██╔════╝██╔═══██╗██╔══██╗╚██╗ ██╔╝██║████╗  ██║██╔════╝                                               
██║     ██║   ██║██████╔╝ ╚████╔╝ ██║██╔██╗ ██║██║  ███╗                                              
██║     ██║   ██║██╔═══╝   ╚██╔╝  ██║██║╚██╗██║██║   ██║                                              
╚██████╗╚██████╔╝██║        ██║   ██║██║ ╚████║╚██████╔╝                                              
 ╚═════╝ ╚═════╝ ╚═╝        ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝                                               
                                                                                                      
███████╗███████╗████████╗████████╗██╗███╗   ██╗ ██████╗ ███████╗        ██╗███████╗ ██████╗ ███╗   ██╗
██╔════╝██╔════╝╚══██╔══╝╚══██╔══╝██║████╗  ██║██╔════╝ ██╔════╝        ██║██╔════╝██╔═══██╗████╗  ██║
███████╗█████╗     ██║      ██║   ██║██╔██╗ ██║██║  ███╗███████╗        ██║███████╗██║   ██║██╔██╗ ██║
╚════██║██╔══╝     ██║      ██║   ██║██║╚██╗██║██║   ██║╚════██║   ██   ██║╚════██║██║   ██║██║╚██╗██║
███████║███████╗   ██║      ██║   ██║██║ ╚████║╚██████╔╝███████║██╗╚█████╔╝███████║╚██████╔╝██║ ╚████║
╚══════╝╚══════╝   ╚═╝      ╚═╝   ╚═╝╚═╝  ╚═══╝ ╚═════╝ ╚══════╝╚═╝ ╚════╝ ╚══════╝ ╚═════╝ ╚═╝  ╚═══╝
                                                                                                      
███████╗██╗██╗     ███████╗    ████████╗ ██████╗      ██████╗ ██████╗ ███╗   ██╗███████╗██╗ ██████╗   
██╔════╝██║██║     ██╔════╝    ╚══██╔══╝██╔═══██╗    ██╔════╝██╔═══██╗████╗  ██║██╔════╝██║██╔════╝   
█████╗  ██║██║     █████╗         ██║   ██║   ██║    ██║     ██║   ██║██╔██╗ ██║█████╗  ██║██║  ███╗  
██╔══╝  ██║██║     ██╔══╝         ██║   ██║   ██║    ██║     ██║   ██║██║╚██╗██║██╔══╝  ██║██║   ██║  
██║     ██║███████╗███████╗       ██║   ╚██████╔╝    ╚██████╗╚██████╔╝██║ ╚████║██║     ██║╚██████╔╝  
╚═╝     ╚═╝╚══════╝╚══════╝       ╚═╝    ╚═════╝      ╚═════╝ ╚═════╝ ╚═╝  ╚═══╝╚═╝     ╚═╝ ╚═════╝   

EOF

if pacman -Q code &> /dev/null; then
    # Get the directory of the script
    SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

    # Specify the filename you want to copy.
    # Replace 'yourfile.txt' with the actual file name.
    FILENAME="settings.json"

    # Specify the destination configuration directory.
    # Replace '/path/to/config' with the actual path to your configuration directory.
    DEST_DIR="~/.config/Code/User/"

    # Copy the file to the destination directory
    cp "${SCRIPT_DIR}/${FILENAME}" "${DEST_DIR}/"

    echo "File ${FILENAME} copied to ${DEST_DIR}"
fi

echo
if pacman -Q codium &> /dev/null; then
    # Get the directory of the script
    SCRIPT_DIR="$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

    # Specify the filename you want to copy.
    # Replace 'yourfile.txt' with the actual file name.
    FILENAME="settings.json"

    # Specify the destination configuration directory.
    # Replace '/path/to/config' with the actual path to your configuration directory.
    DEST_DIR="~/.config/VSCodium/User/"

    # Copy the file to the destination directory
    cp "${SCRIPT_DIR}/${FILENAME}" "${DEST_DIR}/"

    echo "File ${FILENAME} copied to ${DEST_DIR}"
fi
}
