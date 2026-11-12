#!/bin/bash

sudo pacman -Syu git zsh zed wget curl nmap rustup fastfetch hyfetch traceroute tree aircrack-ng \
 signal-desktop sshs sshpass ssh-tools ssh-key-confirmer corkscrew rkhunter kleopatra musl dracut brightnessctl \
 sway wofi waybar dconf dconf-editor nemo network-manager-applet ly base-devel bottom bubblewrap binsider \
 bmon sysdig usbguard yt-dlp gping macchanger mitmproxy android-file-transfer android-tools veracrypt \
 hyprshot shadowsocks-rust blueman bluetui gpg-tui distrobox sn0int onlyoffice-bin libreoffice-still-en-gb \
 qemu-full oha impala termusic wiremix ttf-bigblueterminal-nerd alsa-tools steam podman cargo-audit hydra zip rarcrack \
 fcrackzip tomb prismlauncher python openjdk21-src openjdk21-doc r

rustup default stable

git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si
cd ..

paru -Syu eww waterfox-bin hyprlang2lua framework-tool-tui gloomberb-bin wtfutil nym-vpnd wluma cliamp arti linecast nemu systemd-manager-tui \
tray-tui radarr-bin tortuise xytz pipemixer

sudo systemctl enable nym-vpnd
sudo systemctl enable ly@tty2.service
sudo systemctl disable sddm
sudo systemctl disable getty@tty2.service
sudo systemctl daemon-reload
sudo systemctl enable --now radarr

paru -S nym-vpnc-bin



sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

sudo pacman-key --recv-key 3056513887B78AEB --keyserver keyserver.ubuntu.com
sudo pacman-key --lsign-key 3056513887B78AEB
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-keyring.pkg.tar.zst'
sudo pacman -U 'https://cdn-mirror.chaotic.cx/chaotic-aur/chaotic-mirrorlist.pkg.tar.zst'


# /etc/pacman.conf
# [chaotic-aur]
# Include = /etc/pacman.d/chaotic-mirrorlist
