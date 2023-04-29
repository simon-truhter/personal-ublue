wget -P /tmp https://extensions.gnome.org/extension-data/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip 
wget -P /tmp https://extensions.gnome.org/extension-data/custom-accent-colorsdemiskp.v6.shell-extension.zip
wget -P /tmp https://extensions.gnome.org/extension-data/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip
#unzip /tmp/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip -d /usr/share/gnome-shell/extensions/appindicatorsupport@rgcjonas.gmail.com
#unzip /tmp/custom-accent-colorsdemiskp.v6.shell-extension.zip -d /usr/share/gnome-shell/extensions/custom-accent-colors@pantheon.io
#unzip /tmp/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip -d /usr/share/gnome-shell/extensions/soft-brightness-plus@joelkitching.com
sudo gnome-extensions install /tmp/appindicatorsupportrgcjonas.gmail.com.v53.shell-extension.zip 
# appindicatorsupport@rgcjonas.gmail.com
sudo gnome-extensions install /tmp/custom-accent-colorsdemiskp.v6.shell-extension.zip
#custom-accent-colors@pantheon.io
sudo gnome-extensions install /tmp/soft-brightness-plusjoelkitching.com.v1.shell-extension.zip
#soft-brightness-plus@joelkitching.com
