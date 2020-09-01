#!/bin/bash
while true
do
	clear # clear screen for each loop of menu
 	tput setaf 3
	echo "========================================"
	echo " --- Manjaro GNOME Setup Script 2.0 ---"
	echo "========================================"
	tput setaf 2; echo "Script created by Nathan Viroonchatapan."
	tput setaf 2; echo "All due credit and respect to Tyler Broad, for his work on the Release 2 codebase."
	tput setaf 3; echo "You can open this script in a text editor to see packages to be installed in detail."
	tput setaf 3; echo "Press 1 to install all packages in the script (Full Install/All User Packages)"
	echo "Press 2 to install only the base packages in the script (Minimal Install/Essentials)"
	echo "Press 3 to install all packages in the script (Full Install/All User Packages with Japanese keyboard layout)"
	echo "Press 4 to install only the base packages in the script (Minimal Install/Essentials with Japanese keyboard layout)"
	tput setaf 1; echo "Press Q to quit"
	tput setaf 3; echo "Enter your selection here and hit <return>..."
	tput setaf 1; echo "System will automatically reboot after the script is run!!!"
	tput setaf 1; echo "DO NOT RUN THIS SCRIPT MORE THAN ONCE!!!"
	tput sgr0
	read answer
	case "$answer" in
		1) echo "Full Install/All User Packages..."; sleep 5; sudo pacman -Syyu --noconfirm; sudo pacman -S --noconfirm yay; yay -Yc --noconfirm; yay -Syy --noconfirm; sudo pacman -S --noconfirm remmina bleachbit frozen-bubble musescore asunder brasero k3b pavucontrol pulseeffects rhythmbox shotwell solaar gnome-boxes gparted vlc gpart speedtest-cli neofetch audacity telegram-desktop easytag android-tools gnome-sound-recorder pitivi supertux obs-studio minetest cdrtools cdrdao dvd+rw-tools fdkaac vorbis-tools opus-tools mac musepack-tools virtualbox virtualbox-guest-iso linux57-virtualbox-host-modules discord gnome-books gnome-firmware unoconv httrack xorg-xkill make fakeroot patch ed autoconf automake pkgconf bison flex curl; gpg --keyserver pool.sks-keyservers.net --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90; gpg --keyserver pool.sks-keyservers.net --recv-keys 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45; yay -S --noconfirm spotify-adblock-git 4kvideodownloader 4kyoutubetomp3 jre jdk rhythmbox-plugin-alternative-toolbar google-chrome; java --version; sleep 5; java -version; sleep 5; yay -S --noconfirm minecraft-launcher; yay -S --noconfirm megasync nautilus-megasync; sudo pacman -Rcns --noconfirm geary lollypop steam-manjaro; echo "[Desktop Entry]; Hidden=true" > /tmp/1; find /usr -name "*lsp_plug*desktop" 2>/dev/null | cut -f 5 -d '/' | xargs -I {} cp /tmp/1 ~/.local/share/applications/{}; sudo -u gdm dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false; sudo usermod -a -G optical $USER; sudo usermod -a -G vboxusers $USER; yay -Syyu --noconfirm; yay -Yc --noconfirm; echo "Rebooting..."; sleep 5; sudo reboot;;
		2) echo "Minimal Install/Essentials..."; sleep 5; sudo pacman -Syyu --noconfirm; sudo pacman -S --noconfirm yay; yay -Yc --noconfirm; yay -Syy --noconfirm; sudo pacman -S --noconfirm pavucontrol rhythmbox gparted gpart gnome-firmware xorg-xkill unoconv make fakeroot patch ed autoconf automake pkgconf bison flex curl; yay -S --noconfirm rhythmbox-plugin-alternative-toolbar; sudo pacman -Rcns --noconfirm geary lollypop steam-manjaro; sudo -u gdm dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false; yay -Syyu --noconfirm; yay -Yc --noconfirm; echo "Rebooting..."; sleep 5; sudo reboot;;
		3) echo "Full Install/All User Packages with Japanese keyboard layout..."; sleep 5; sudo pacman -Syyu --noconfirm; sudo pacman -S --noconfirm yay; yay -Yc --noconfirm; yay -Syy --noconfirm; sudo pacman -S --noconfirm remmina bleachbit frozen-bubble musescore asunder brasero k3b pavucontrol pulseeffects rhythmbox shotwell solaar gnome-boxes gparted vlc gpart speedtest-cli neofetch audacity telegram-desktop easytag android-tools gnome-sound-recorder pitivi supertux obs-studio minetest cdrtools cdrdao dvd+rw-tools fdkaac vorbis-tools opus-tools mac musepack-tools virtualbox virtualbox-guest-iso linux57-virtualbox-host-modules discord gnome-books gnome-firmware unoconv httrack xorg-xkill make fakeroot patch ed autoconf automake pkgconf bison flex curl; gpg --keyserver pool.sks-keyservers.net --recv-keys 931FF8E79F0876134EDDBDCCA87FF9DF48BF1C90; gpg --keyserver pool.sks-keyservers.net --recv-keys 2EBF997C15BDA244B6EBF5D84773BD5E130D1D45; yay -S --noconfirm spotify-adblock-git 4kvideodownloader 4kyoutubetomp3 jre jdk rhythmbox-plugin-alternative-toolbar google-chrome; java --version; sleep 5; java -version; sleep 5; yay -S --noconfirm minecraft-launcher; yay -S --noconfirm megasync nautilus-megasync; sudo pacman -Rcns --noconfirm geary lollypop steam-manjaro; echo "[Desktop Entry]; Hidden=true" > /tmp/1; find /usr -name "*lsp_plug*desktop" 2>/dev/null | cut -f 5 -d '/' | xargs -I {} cp /tmp/1 ~/.local/share/applications/{}; sudo -u gdm dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false; sudo usermod -a -G optical $USER; sudo usermod -a -G vboxusers $USER; sudo pacman -S --noconfirm fcitx-mozc fcitx-configtool; echo -e "XMODIFIERS=@im=fcitx\nGTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nDefaultIMModule=fcitx" > ~/.pam_environment; fcitx-autostart; yay -Syyu --noconfirm; yay -Yc --noconfirm; echo "Rebooting..."; sleep 5; sudo reboot;;
		4) echo "Minimal Install/Essentials with Japanese keyboard layout..."; sleep 5; sudo pacman -Syyu --noconfirm; sudo pacman -S --noconfirm yay; yay -Yc --noconfirm; yay -Syy --noconfirm; sudo pacman -S --noconfirm pavucontrol rhythmbox gparted gpart gnome-firmware xorg-xkill unoconv make fakeroot patch ed autoconf automake pkgconf bison flex curl; yay -S --noconfirm rhythmbox-plugin-alternative-toolbar; sudo pacman -Rcns --noconfirm geary lollypop steam-manjaro; sudo -u gdm dbus-launch --exit-with-session gsettings set org.gnome.settings-daemon.plugins.color night-light-enabled false; sudo pacman -S --noconfirm fcitx-mozc fcitx-configtool; echo -e "XMODIFIERS=@im=fcitx\nGTK_IM_MODULE=fcitx\nQT_IM_MODULE=fcitx\nDefaultIMModule=fcitx" > ~/.pam_environment; fcitx-autostart; yay -Syyu --noconfirm; yay -Yc --noconfirm; echo "Rebooting..."; sleep 5; sudo reboot;;
		q) exit;;
		Q) exit;;
	esac
	tput setaf 3; echo "Hit the <return> key to finish..."
	tput sgr0
	read answer
	exit
done
