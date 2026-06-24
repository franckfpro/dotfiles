#! /bin/bash
# lancer en tant qu'utilisateur
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
flatpak install --assumeyes fedora com.github.tchx84.Flatseal
flatpak install --assumeyes fedora org.keepassxc.KeePassXC
flatpak install --assumeyes fedora org.gnome.Papers
flatpak install --assumeyes fedora org.gnome.Loupe
flatpak install --assumeyes flathub com.github.unrud.VideoDownloader
flatpak install --assumeyes flathub com.google.Chrome
flatpak install --assumeyes flathub com.vscodium.codium
flatpak install --assumeyes flathub io.gitlab.news_flash.NewsFlash
flatpak install --assumeyes flathub io.mpv.Mpv
flatpak install --assumeyes flathub io.neovim.nvim
flatpak install --assumeyes flathub com.brave.Browser

flatpak uninstall --assumeyes org.fedoraproject.MediaWriter
flatpak uninstall --assumeyes org.gnome.Calculator
flatpak uninstall --assumeyes org.gnome.Calendar
flatpak uninstall --assumeyes org.gnome.Characters
flatpak uninstall --assumeyes org.gnome.Connections
flatpak uninstall --assumeyes org.gnome.Contacts
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

flatpak run com.vscodium.codium --install-extension ms-python.black-formatter
flatpak run com.vscodium.codium --install-extension ms-python.python
flatpak run com.vscodium.codium --install-extension ms-python.debugpy
flatpak run com.vscodium.codium --install-extension ms-python.vscode-python-envs
flatpak run com.vscodium.codium --install-extension vscodevim.vim

mkdir ~/.ranger
cd ~/.ranger/
wget https://ranger.fm/ranger-stable.tar.gz
tar xvf ranger-stable.tar.gz
./ranger-1.9.4/ranger.py --copy-config=all

mkdir ~/.config/autostart
cp /var/lib/flatpak/app/io.gitlab.news_flash.NewsFlash/current/active/export/share/applications/io.gitlab.news_flash.NewsFlash.desktop ~/.config/autostart/
cp /var/lib/flatpak/app/com.brave.Browser/current/active/export/share/applications/com.brave.Browser.desktop ~/.config/autostart/

echo "
[Desktop Entry]
Type=Application
Name= ranger
Comment=Launches the ranger file manager
Icon=utilities-terminal
Exec=ptyxis --maximize -- ~/.ranger/ranger-1.9.4/ranger.py
Categories=ConsoleOnly;System;FileTools;FileManager
MimeType=inode/directory;
X-GNOME-Autostart-enabled=true
" > ~/.config/autostart/ranger.desktop

# middle click
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true

