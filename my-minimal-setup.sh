# Dnf flags
echo 'fastestmirror=1' | sudo tee -a /etc/dnf/dnf.conf
echo 'max_parallel_downloads=10' | sudo tee -a /etc/dnf/dnf.conf
echo 'deltarpm=true' | sudo tee -a /etc/dnf/dnf.conf

# Install gnome with login manager and basic packages
sudo dnf update --refresh -y
sudo dnf install gnome-shell gnome-terminal nautilus gnome-software gnome-disk-utility gnome-text-editor xdg-user-dirs xdg-user-dirs-gtk -y
sudo systemctl enable gdm
sudo systemctl set-default graphical.target
sudo dnf remove gnome-tour* -y

# Adding repos
sudo dnf install fedora-workstation-repositories -y
sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-"$(rpm -E %fedora)".noarch.rpm -y
sudo dnf update --refresh -y
sudo dnf install dnf-plugins-core -y

#wifi
sudo dnf install NetworkManager-wifi -y
sudo dnf install iwlwifi-mvm-firmware -y

# Install Softwares and libs
sudo dnf glib2-devel wget git pciutils transmission uget gnome-tweaks gnome-extensions chrome-gnome-shell firefox unzip zip tar rsync thunderbird vlc -y

# Update firmware
sudo dnf install fwupd -y
sudo fwupdmgr refresh --force
sudo fwupdmgr get-updates
sudo fwupdmgr update

# Install Brave browser
sudo dnf config-manager --add-repo https://brave-browser-rpm-release.s3.brave.com/brave-browser.repo
sudo rpm --import https://brave-browser-rpm-release.s3.brave.com/brave-core.asc
sudo dnf install brave-browser -y

# Install 1Password Linux
sudo rpm --import https://downloads.1password.com/linux/keys/1password.asc
sudo sh -c 'echo -e "[1password]\nname=1Password Stable Channel\nbaseurl=https://downloads.1password.com/linux/rpm/stable/\$basearch\nenabled=1\ngpgcheck=1\nrepo_gpgcheck=1\ngpgkey=\"https://downloads.1password.com/linux/keys/1password.asc\"" > /etc/yum.repos.d/1password.repo'
sudo dnf install 1password -y
