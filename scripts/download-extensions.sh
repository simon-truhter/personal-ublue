# todo move it again later dl into /tmp
wget -P /usr/share/gnome-shell/extensions https://extensions.gnome.org/extension-data/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip 
wget -P /usr/share/gnome-shell/extensions https://extensions.gnome.org/extension-data/custom-accent-colorsdemiskp.v6.shell-extension.zip
wget -P /usr/share/gnome-shell/extensions https://extensions.gnome.org/extension-data/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip
# try to work with the key instead to enable them
#gnome-extensions install /usr/share/gnome-shell/extensions/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip
#gnome-extensions install /usr/share/gnome-shell/extensions/custom-accent-colorsdemiskp.v6.shell-extension.zip
#gnome-extensions install /usr/share/gnome-shell/extensions/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip
# nope extensions need to be added to the user space
unzip /tmp/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip -d /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com
unzip /tmp/custom-accent-colorsdemiskp.v6.shell-extension.zip -d /usr/share/gnome-shell/extensions/custom-accent-colors@pantheon.io
unzip /tmp/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip -d /usr/share/gnome-shell/extensions/soft-brightness-plus@joelkitching.com
echo "[org/gnome/shell]
enabled-extensions=['appindicatorsupport@rgcjonas.gmail.com', 'custom-accent-colors@pantheon.io','soft-brightness-plus@joelkitching.com']" | sudo tee -a /etc/dconf/db/local.d/00-extensions
dconf update
#sudo gnome-extensions install /tmp/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip 
# appindicatorsupport@rgcjonas.gmail.com
#sudo gnome-extensions install /tmp/custom-accent-colorsdemiskp.v6.shell-extension.zip
#custom-accent-colors@pantheon.io
#sudo gnome-extensions install /tmp/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip
#soft-brightness-plus@joelkitching.com
