echo "
deb http://ftp.fr.debian.org/debian trixie main contrib non-free non-free-firmware
deb http://ftp.fr.debian.org/debian trixie-updates main contrib non-free non-free-firmware
deb http://ftp.fr.debian.org/debian trixie-backports main contrib non-free non-free-firmware
deb http://security.debian.org/ trixie-security main contrib non-free non-free-firmware
" > /etc/apt/sources.list

apt update
apt dist-upgrade

apt install --assume-yes flatpak
flatpak remote-add --if-not-exists fedora oci+https://registry.fedoraproject.org
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --assumeyes fedora com.github.tchx84.Flatseal
flatpak install --assumeyes fedora org.keepassxc.KeePassXC
flatpak install --assumeyes flathub com.github.unrud.VideoDownloader
flatpak install --assumeyes flathub io.gitlab.news_flash.NewsFlash
flatpak install --assumeyes flathub com.brave.Browser
flatpak install --assumeyes flathub com.google.Chrome
flatpak install --assumeyes org.freedesktop.Platform.GStreamer.gstreamer-vaapi
flatpak install --assumeyes org.freedesktop.Platform.ffmpeg-full

apt install --assume-yes neovim
apt install --assume-yes ranger
apt install --assume-yes ffmpeg
apt install --assume-yes mpv
apt install --assume-yes git

select-editor

apt remove libreoffice-help-*
apt remove libreoffice-l10n-*

apt autoremove --assume-yes
apt autoclean --assume-yes

# middle click gnome 50
# gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true

sed --in-place 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/g' /etc/default/grub
update-grub
