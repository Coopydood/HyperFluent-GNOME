#!/usr/bin/env bash

## Coopydood's Fluent theme installer

echo ───────────────────────────────────────────────── 2>&1 
echo \ \ HyperFluent GNOME Theme Installer \ \ \ \ \ \ v1.0 
echo \ \ by Coopydood
echo ───────────────────────────────────────────────── 2>&1 
echo 2>&1 
#echo ───────────────────────────────────────────────── 2>&1 
echo \ \ ▶ DOWNLOADING ASSETS...
#echo ───────────────────────────────────────────────── 2>&1 

git submodule init > /dev/null 2>&1
git submodule update > /dev/null 2>&1
sleep 1
echo 2>&1 
#echo ───────────────────────────────────────────────── 2>&1 
echo \ \ ▶ COPYING FILES...
#echo ───────────────────────────────────────────────── 2>&1 

mkdir ~/.local/share/sounds/modern-minimal-ui-sounds > /dev/null 2>&1
cp -R ./src/sounds/* ~/.local/share/sounds/modern-minimal-ui-sounds > /dev/null 2>&1
cd ./src/theme/
./install.sh -c dark --tweaks blur round > /dev/null 2>&1
cd ../icons/
./install.sh > /dev/null 2>&1
cd ..
cd ..
mv ~/.themes/Fluent-round-Dark ~/.themes/Fluent-Dark > /dev/null 2>&1
cp -R ~/.themes/Fluent-Dark ~/.themes/Fluent > /dev/null 2>&1
sudo cp -R ~/.themes/* /usr/share/themes/ > /dev/null 2>&1
sudo cp -R ~/.local/share/icons/* /usr/share/icons/ > /dev/null 2>&1
sudo cp -R ~/.local/share/sounds/* /usr/share/sounds/ > /dev/null 2>&1
sleep 3
echo 2>&1 
#echo ───────────────────────────────────────────────── 2>&1 
echo \ \ ▶ APPLYING SETTINGS...
#echo ───────────────────────────────────────────────── 2>&1 
sleep 2
cp ./prefs/gtk.css ~/.config/gtk-4.0/gtk.css > /dev/null 2>&1
dconf load /org/gnome/ < ./prefs/gnome.ini
dconf load /org/gnome/shell/extensions/blur-my-shell/ < ./prefs/blur.ini
dconf load /org/gnome/shell/extensions/dash-to-panel/ < ./prefs/dtp.ini
gsettings set org.gnome.desktop.interface monospace-font-name 'Adwaita Mono 11'
gsettings set org.gnome.desktop.interface font-name 'Adwaita Sans 10.8'
gsettings set org.gnome.desktop.interface gtk-theme 'Fluent-Dark'
gsettings set org.gnome.desktop.interface gtk-key-theme 'Default'
gsettings set org.gnome.desktop.interface cursor-theme 'Fluent-cursors'
gsettings set org.gnome.desktop.interface font-antialiasing 'rgba'
gsettings set org.gnome.desktop.interface color-scheme 'prefer-dark'
gsettings set org.gnome.desktop.wm.preferences button-layout 'appmenu:minimize,maximize,close'
gsettings set org.gnome.desktop.sound input-feedback-sounds true
gsettings set org.gnome.desktop.sound event-sounds true
gsettings set org.gnome.desktop.sound theme-name 'modern-minimal-ui-sounds'
gsettings set org.gnome.mutter attach-modal-dialogs false
gsettings set org.gnome.mutter center-new-windows true
gsettings set org.gnome.nautilus.preferences default-folder-viewer 'icon-view'
gsettings set org.gnome.nautilus.preferences show-hidden-files true
gsettings set org.gnome.nautilus.preferences show-image-thumbnails 'always'
gsettings set org.gnome.nautilus.icon-view default-zoom-level 'small-plus'
echo 2>&1 
#echo ───────────────────────────────────────────────── 2>&1 
echo \ \ ▶ SAVING SETTINGS...
#echo ───────────────────────────────────────────────── 2>&1 

echo export GTK_THEME=Fluent:dark >> ~/.bash_profile
source ~/.bash_profile
sleep 3
echo 2>&1 
echo ───────────────────────────────────────────────── 2>&1 
echo \ \ DONE!     PLEASE LOG OUT AND BACK IN!     :]
echo ───────────────────────────────────────────────── 2>&1 
