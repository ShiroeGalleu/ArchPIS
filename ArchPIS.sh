#!/bin/bash
#v0.2

#intro
clear
echo "welcome to Shrioe Galleu ArchPIS (Arch Post Install Script)"
sleep 2
clear
echo "multilib and git is required to use this script and will be install if you continue"
sleep 2
clear

#enable multilib and install git
while true; do
    read -p "Do you wish enable multilib, and install git? This will also run -Syu (Required) [y/n] " yn
    case $yn in
        [Yy]* ) sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf && sudo pacman -Syu git; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#add yay for aur
while true; do
    read -p "Do you wish to install yay? Recommended [y/n]" yn
    case $yn in
        [Yy]* ) pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#add pamac-aur appstore
while true; do
    read -p "Do you wish to install pamac-aur? Recommended [y/n]" yn
    case $yn in
        [Yy]* ) git clone https://aur.archlinux.org/pamac-aur.git
        cd pamac-aur
        makepkg -si; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#install wine and it's dependencies
while true; do
    read -p "Do you wish to install wine? (Reccomened) [y/n]" yn
    case $yn in
        [Yy]* ) sudo pacman -S --needed wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
mpg123 lib32-mpg123 openal lib32-openal v4l-utils lib32-v4l-utils libpulse lib32-libpulse libgpg-error \
lib32-libgpg-error alsa-plugins lib32-alsa-plugins alsa-lib lib32-alsa-lib libjpeg-turbo lib32-libjpeg-turbo \
sqlite lib32-sqlite libxcomposite lib32-libxcomposite libxinerama lib32-libgcrypt libgcrypt lib32-libxinerama \
ncurses lib32-ncurses ocl-icd lib32-ocl-icd libxslt lib32-libxslt libva lib32-libva gtk3 \
lib32-gtk3 gst-plugins-base-libs lib32-gst-plugins-base-libs vulkan-icd-loader lib32-vulkan-icd-loader; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#web browsers
while true; do
    read -p "Web broswer
    1. Brave
    2. Google Chrome
    3. Chromium
    4. Firefox
    5. Vivaldi
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) git clone https://aur.archlinux.org/brave-bin.git
        cd brave-bin
        makepkg -si
        echo ;;
        [2]* ) git clone https://aur.archlinux.org/google-chrome.git
        cd google-chrome
        makepkg -si 
        echo ;;
        [3]* ) sudo pacman -S chromium 
        echo ;;
        [4]* ) sudo pacman -S firefox 
        echo ;;
        [5]* ) sudo pacman -S vivaldi 
        echo ;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#game launcher
while true; do
    read -p "Game Launchers
    1. steam (Do I really have to cover this one?)
    2. heroic (Covers Epic, GOG, and Amazon Games)
    3. legendary (Epic Launcher)
    4. lutirs (A libary for all your games)
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) sudo pacman -S steam-native-runtime;;
        [2]* ) git clone https://aur.archlinux.org/heroic-games-launcher-bin.git
        cd heroic-games-launcher-bin/
         makepkg -si;;
        [3]* ) git clone https://aur.archlinux.org/legendary.git
        cd legendary
        makepkg -si;;
        [4]* ) sudo pacman -S lutris;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#social
while true; do
    read -p "Spcial
    1. discord
    2. vesktop (better discord)
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) git clone https://aur.archlinux.org/vesktop-bin.git
        cd vesktop-bin
        makepkg -si;;
        [2]* ) sudo pacman -S discord;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#media
while true; do
    read -p "Media
    1. Spotify
    2. vlc
    3. jellyfin (server)
    4. plex (server)
    5. obs studio
    6. krita 
    7. gimp
    8. inkscape
    9. blender
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) git clone https://aur.archlinux.org/spotify.git
        cd spotify
        makepkg -si;;
        [2]* ) sudo pacman -S vlc;;
        [3]* ) sudo pacman -S jellyfin-server
        makepkg -si;;
        [4]* ) git clone https://aur.archlinux.org/plex-media-server.git
        cd plex-media-server
        makepkg -si;;
        [5]* ) sudo pacman -S obs-studio;;
        [6]* ) sudo pacman -S krita;;
        [7]* ) sudo pacman -S gimp;;
        [8]* ) sudo pacman -S inkscape;;
        [9]* ) sudo pacman -S blender;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#documents
while true; do
    read -p "documents
    1. libre office fresh
    2. only office
    3. open office
    4. obsidian
    5. kate
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) sudo pacman -S libreoffice-fresh;;
        [2]* ) git clone https://aur.archlinux.org/onlyoffice-bin.git
        cd onlyoffice-bin
        makepkg -si;;
        [3]* ) git clone https://aur.archlinux.org/openoffice-bin.git
        cd openoffice-bin
        makepkg -si;;
        [4]* ) sudo pacman -S obsidian;;
        [5]* ) sudo pacman -S kate;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#dev tools
while true; do
    read -p "Dev Tools
    1. vs codium
    2. vs code
    3. node js
    4. docker
    
    " yn
    case $yn in
        [1]* ) git clone https://aur.archlinux.org/vscodium-bin.git
        cd vscodium-bin
        makepkg -si;;
        [2]* ) sudo pacman -S vscode;;
        [3]* ) sudo pacman -S nodejs;;
        [4]* ) sudo pacman -S docker;;
        [0]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done



clear
echo "thank you for choosing shiroe for you post install script (pis). if you have any issue or suggestions send them to me github"
sleep 2
echo "goodbye"
echo 


#template
#while true; do
#    read -p "message here (123)[y/n]" yn
#    case $yn in
#        [Yy]* ) Echo "thing was installed"; break;;
#        [Nn]* ) break;;
#        * ) echo "invalid option";;
#    esac
#done
