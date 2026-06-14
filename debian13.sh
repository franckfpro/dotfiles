echo "
deb http://ftp.fr.debian.org/debian trixie main contrib non-free non-free-firmware
deb http://ftp.fr.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb http://ftp.fr.debian.org/debian trixie-backports main contrib non-free non-free-firmware
deb http://security.debian.org/ trixie-security main contrib non-free non-free-firmware
" > /etc/apt/sources.list

apt update
apt dist-upgrade

apt install --assume-yes flatpak
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --assumeyes flathub com.github.unrud.VideoDownloader

apt install --assume-yes neovim
apt install --assume-yes newsboat
apt install --assume-yes ranger
apt install --assume-yes mpv
apt install --assume-yes ffmpeg
apt install --assume-yes chromium
apt install --assume-yes keepassxc

ls .local/share/applications/chromium-browser.desktop

select-editor

apt autoremove --assume-yes
apt autoclean --assume-yes

sed --in-place 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/g' /etc/default/grub
update-grub
