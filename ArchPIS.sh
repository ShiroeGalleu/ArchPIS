#!/bin/bash
#v0.2

#intro
clear
echo "welcome to Shrioe Galleu ArchPIS (Arch Post Install Script)"
sleep 2
clear
echo "multilib and git is needed use this script"
sleep 2
clear

#enable multilib and install git
while true; do
    read -p "Do you wish enable multilib, and install git? This will also run -Syu (HIGHLY RECOMMENDED) [y/n] " yn
    case $yn in
        [Yy]* ) sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf && sudo pacman -Syu git; break;;
        [Nn]* ) break;;
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
makepkg -si
cd ..; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#graphic drivers
while true; do
    read -p "Do you wish to setup your graphics drivers
    1. AMD (just install reccomened packages)
    2. Nvida (open)
    3. Nvida (closed)
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) sudo pacman -S --noconfirm mesa lib32-mesa mesa-vdpau lib32-mesa-vdpau lib32-vulkan-radeon vulkan-radeon glu lib32-glu vulkan-icd-loader lib32-vulkan-icd-loader; break;;
        [2]* ) Echo "not yet added";;
        [3]* ) sudo pacman -S --noconfirm nvidia nvidia-settings nvidia-utils lib32-nvidia-utils lib32-opencl-nvidia opencl-nvidia libvdpau libxnvctrl vulkan-icd-loader lib32-vulkan-icd-loader; break;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#add pamac-aur appstore
while true; do
    read -p "Do you wish to install pamac-aur? (require yay) Recommended [y/n]" yn
    case $yn in
        [Yy]* ) yay -S pamac-aur; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#install wine and it's dependencies
while true; do
    read -p "Do you wish to install wine? (Reccomened) [y/n]" yn
    case $yn in
        [Yy]* ) sudo pacman -S --needed --noconfirm wine giflib lib32-giflib libpng lib32-libpng libldap lib32-libldap gnutls lib32-gnutls \
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
    1. Brave (require yay)
    2. Google Chrome (require yay)
    3. Chromium
    4. Firefox
    5. Vivaldi
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) yay -S brave-bin ;;
        [2]* ) yay -S google-chrome ;;
        [3]* ) sudo pacman -S --noconfirm chromium 
        echo ;;
        [4]* ) sudo pacman -S --noconfirm firefox 
        echo ;;
        [5]* ) sudo pacman -S --noconfirm vivaldi 
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
    2. heroic (Covers Epic, GOG, and Amazon Games) (require yay)
    3. legendary (Epic Launcher) (require yay)
    4. lutirs (A libary for all your games)
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) sudo pacman -S --noconfirm steam-native-runtime;;
        [2]* ) yay -S --noconfirm heroic-games-launcher-bin ;;
        [3]* ) yay -S --noconfirm legendary;;
        [4]* ) sudo pacman -S --noconfirm lutris;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#game utils
while true; do
    read -p "do you wish to install reccomened game util? [y/n]" yn
    case $yn in
    [Yy]* ) sudo pacman -S mangohud gamemode winetricks gamescope ;;
    [Nn]* ) break;;

clear

#social
while true; do
    read -p "Spcial
    1. discord
    2. vesktop (better discord) (require yay)
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) sudo pacman -S --noconfirm discord;;
        [2]* ) yay -S vesktop-bin;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#media
while true; do
    read -p "Media
    1. Spotify (require yay)
    2. vlc
    3. jellyfin (server)
    4. plex (server) (require yay)
    5. obs studio
    6. krita 
    7. gimp
    8. inkscape
    9. blender
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) yay -S spotify;;
        [2]* ) sudo pacman -S --noconfirm vlc;;
        [3]* ) sudo pacman -S --noconfirm jellyfin-server;;
        [4]* ) yay -S plex-media-server;;
        [5]* ) sudo pacman -S --noconfirm obs-studio;;
        [6]* ) sudo pacman -S --noconfirm krita;;
        [7]* ) sudo pacman -S --noconfirm gimp;;
        [8]* ) sudo pacman -S --noconfirm inkscape;;
        [9]* ) sudo pacman -S --noconfirm blender;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#documents
while true; do
    read -p "documents
    1. libre office fresh
    2. only office (require yay)
    3. open office (require yay)
    4. obsidian
    5. kate
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) sudo pacman -S --noconfirm libreoffice-fresh;;
        [2]* ) yay -S onlyoffice-bin;;
        [3]* ) yay -S openoffice-bin;;
        [4]* ) sudo pacman -S --noconfirm obsidian;;
        [5]* ) sudo pacman -S --noconfirm kate;;
        [0]* ) break;;
        * ) echo "invalid option";;
    esac
done

clear

#dev tools
while true; do
    read -p "Dev Tools
    1. vs codium (require yay)
    2. vs code
    3. node js
    4. docker
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) yay -S vscodium-bin;;
        [2]* ) sudo pacman -S --noconfirm vscode;;
        [3]* ) sudo pacman -S --noconfirm nodejs;;
        [4]* ) sudo pacman -S --noconfirm docker;;
        [0]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

clear

#customizion
while true; do
    read -p "Customizion
    1. kde wallpaper engine (unstable) (require plasma 6) (https://aur.archlinux.org/packages/plasma6-wallpapers-wallpaper-engine-git)
    2. chris titus bash (https://christitus.com/mybash/)
    3.
    0. Go to the next step

    " yn
    case $yn in
        [1]* ) yay -S kdewallpaperengine;;
        [2]* ) mkdir -p ~/build
cd ~/build
git clone https://github.com/christitustech/mybash
cd mybash
./setup.sh;;
        [3]* ) Echo "thing was installed";;
        [0]* ) break;;
        * ) echo "invalid option";;
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
