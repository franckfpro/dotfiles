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
flatpak install --assumeyes fedora org.chromium.Chromium
flatpak install --assumeyes fedora org.gabmus.gfeeds
flatpak install --assumeyes fedora org.keepassxc.KeePassXC
flatpak install --assumeyes fedora org.vim.Vim
flatpak install --assumeyes flathub com.github.unrud.VideoDownloader
flatpak install --assumeyes flathub com.vscodium.codium
flatpak install --assumeyes flathub io.gitlab.news_flash.NewsFlash
flatpak install --assumeyes flathub io.mpv.Mpv
flatpak install --assumeyes flathub io.neovim.nvim

apt install --assume-yes newsboat
apt install --assume-yes ranger

select-editor

apt autoremove --assume-yes
apt autoclean --assume-yes

sed --in-place 's/GRUB_TIMEOUT=5/GRUB_TIMEOUT=1/g' /etc/default/grub
update-grub
