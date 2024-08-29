#!/bin/sh

# Functions
installPackages(){
    sudo apt-get update
    sudo apt-get install -y compiz compiz-plugins gnome-do cairo-dock hsetroot
}

installToUsr(){
    if [-f main.sh]; then
        sudo mv main.sh /usr/bin/KathDE/main.sh

        sudo chmod +x /usr/bin/KathDE/main.sh
        
        echo "main.sh has been moved to /usr/bin/KathDE"

    else
        echo "main.sh not found!"
    fi
}

moveDesktop(){
    if [-f kathde.desktop]; then
        sudo mv kathde.desktop /usr/share/xsessions/kathde.desktop

        echo "KathDE desktop GDM is installed!"

    else
        echo "kathde.desktop not found!"
    fi
}

installPackages
installToUsr
moveDesktop

echo ":: Install finished! ::"
