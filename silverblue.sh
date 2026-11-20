gsettings set org.gnome.settings-daemon.plugins.housekeeping donation-reminder-enabled 'false'
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true

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
systemctl disable qemu-guest-agent.service
systemctl disable rtkit-daemon
systemctl disable spice-vdagentd.socket
systemctl disable sshd
systemctl disable vboxservice.service
systemctl stop sshd
systemctl daemon-reload

flatpak uninstall --assumeyes org.fedoraproject.MediaWriter
flatpak uninstall --assumeyes org.fedoraproject.Platform.CL.default
flatpak uninstall --assumeyes org.fedoraproject.Platform.GL.default
flatpak uninstall --assumeyes org.gnome.Calculator
flatpak uninstall --assumeyes org.gnome.Calendar
flatpak uninstall --assumeyes org.gnome.Characters
flatpak uninstall --assumeyes org.gnome.Connections
flatpak uninstall --assumeyes org.gnome.Contacts
flatpak uninstall --assumeyes org.gnome.Decibels
flatpak uninstall --assumeyes org.gnome.Extensions
flatpak uninstall --assumeyes org.gnome.Logs
flatpak uninstall --assumeyes org.gnome.Loupe
flatpak uninstall --assumeyes org.gnome.Maps
flatpak uninstall --assumeyes org.gnome.NautilusPreviewer
flatpak uninstall --assumeyes org.gnome.Papers
flatpak uninstall --assumeyes org.gnome.Snapshot
flatpak uninstall --assumeyes org.gnome.TextEditor
flatpak uninstall --assumeyes org.gnome.Weather
flatpak uninstall --assumeyes org.gnome.baobab
flatpak uninstall --assumeyes org.gnome.clocks
flatpak uninstall --assumeyes org.gnome.font-viewer
flatpak uninstall --assumeyes --unused

flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --assumeyes fedora com.github.jeromerobert.pdfarranger
flatpak install --assumeyes fedora com.github.tchx84.Flatseal
flatpak install --assumeyes fedora org.gimp.GIMP
flatpak install --assumeyes fedora org.keepassxc.KeePassXC
flatpak install --assumeyes flathub ai.opencode.opencode
flatpak install --assumeyes flathub com.github.unrud.VideoDownloader
flatpak install --assumeyes flathub com.google.Chrome
flatpak install --assumeyes flathub com.jgraph.drawio.desktop
flatpak install --assumeyes flathub io.gitlab.news_flash.NewsFlash
flatpak install --assumeyes flathub md.obsidian.Obsidian
flatpak install --assumeyes flathub org.chromium.Chromium
flatpak install --assumeyes flathub org.chromium.Chromium.Codecs
flatpak install --assumeyes flathub org.freedesktop.Platform.codecs-extra/x86_64/25.08-extra
flatpak install --assumeyes flathub org.freedesktop.Platform.codecs-extra/x86_64/26.08-extra

rpm-ostree upgrade
reboot
rpm-ostree install --assumeyes https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
reboot
rpm-ostree install --assumeyes neovim ranger mpv sway libavcodec-freeworld

