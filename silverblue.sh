systemctl start firewalld
systemctl enable firewalld
firewall-cmd --set-default-zone=drop
firewall-cmd --complete-reload
firewall-cmd --permanent --direct --get-all-rules
firewall-cmd --direct --get-all-rules
firewall-cmd --list-all
sestatus

systemctl disable ModemManager.service
systemctl disable bluetooth.service
systemctl disable chronyd.service
systemctl disable cups.service
systemctl disable nfs-client.target
systemctl disable nfs-convert.service
systemctl disable qemu-guest-agent.service
systemctl disable rtkit-daemon
systemctl disable spice-vdagentd.socket
systemctl disable sshd
systemctl disable vboxservice.service
systemctl stop sshd
systemctl daemon-reload

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --assumeyes fedora com.github.tchx84.Flatseal
flatpak install --assumeyes fedora org.keepassxc.KeePassXC
flatpak install --assumeyes flathub org.chromium.Chromium
flatpak install --assumeyes flathub com.github.unrud.VideoDownloader
flatpak install --assumeyes flathub io.gitlab.news_flash.NewsFlash
flatpak install --assumeyes flathub com.google.Chrome
flatpak install --assumeyes flathub md.obsidian.Obsidian
flatpak install --assumeyes org.freedesktop.Platform.GStreamer.gstreamer-vaapi
flatpak install --assumeyes org.freedesktop.Platform.ffmpeg-full
flatpak install --assumeyes org.freedesktop.Platform.codecs-extra

rpm-ostree upgrade
rpm-ostree install --assumeyes https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
rpm-ostree install --assumeyes neovim ranger mpv git i3 rofi
rpm-ostree override remove ffmpeg-free libavcodec-free libavdevice-free libavfilter-free libavformat-free libavutil-free libswresample-free libswscale-free --install ffmpeg
#Si tu veux seulement la lecture vidéo dans Firefox et les applications Flatpak, il est souvent préférable de conserver `ffmpeg-free` et d’ajouter le codec RPM Fusion :
#rpm-ostree install libavcodec-freeworld

