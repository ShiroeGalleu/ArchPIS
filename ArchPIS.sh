#!/bin/bash
#v0.1

#add multilib and update the packages
while true; do
    read -p "Do you wish enable multilib? This will also run -Syu Required [y/n] " yn
    case $yn in
        [Yy]* ) sudo sed -i "/\[multilib\]/,/Include/"'s/^#//' /etc/pacman.conf && sudo pacman -Syu; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

#add git
while true; do
    read -p "Do you wish to install git? Required [y/n]" yn
    case $yn in
        [Yy]* ) sudo pacman -S git; break;;
        [Nn]* ) exit;;
        * ) echo "Please answer yes or no.";;
    esac
done

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

#install wine and it's dependencies
while true; do
    read -p "Do you wish to install wine [y/n]" yn
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

#add a msg in the terminal
echo
echo
echo "time for some media"
echo
echo

#add Spotify
while true; do
    read -p "Do you wish to install spotify? [y/n]" yn
    case $yn in
        [Yy]* ) git clone https://aur.archlinux.org/spotify.git
        cd spotify
        makepkg -si; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

#add vlc
while true; do
    read -p "Do you wish to install VLC? [y/n]" yn
    case $yn in
        [Yy]* ) sudo pacman -S vlc; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


#add a msg in the terminal
echo
echo
echo "time for some gaming"
echo
echo

#add Steam
while true; do
    read -p "Do you wish to install steam? [y/n]" yn
    case $yn in
        [Yy]* ) sudo pacman -S steam-native-runtime; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

#add heroic
while true; do
    read -p "Do you wish to install Heroic? [y/n]" yn
    case $yn in
        [Yy]* ) git clone https://aur.archlinux.org/heroic-games-launcher-bin.git
        cd heroic-games-launcher-bin/
         makepkg -si; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done

#add a msg in the terminal
echo
echo
echo "Utility Time"
echo
echo

#add docker
while true; do
    read -p "Do you wish to install docker? [y/n]" yn
    case $yn in
        [Yy]* ) sudo pacman -S docker; break;;
        [Nn]* ) break;;
        * ) echo "Please answer yes or no.";;
    esac
done


echo 
echo 
echo 
echo "Thank You for choosing Shiroe Gallue for your post install setup"
echo 