# Fedora-gnome-minimal
A Decluttered way to install Fedora-workstation minimally

## Download Fedora-Everything-ISO
Fedora-Everything-ISO can be downloaded from https://alt.fedoraproject.org/

## Install Fedora MINIMAL

- Boot from the installation media. Here you select the option to install Fedora
- Do all the basic steps (language, layout, time&date, partition, user, password etc)
- In Software Selection Menu tick "**Minimal Install**" and **deselect all other options**

## After Installation, Boot into Fedora. Login to tty:

```
sudo dnf install wget
wget https://github.com/Pro-Fli/Fedora-gnome-minimal/blob/main/my-minimal-setup.sh
./my-minimal-setup.sh
```
### NOTE:
Before executing _my-minimal-setup.sh_ script, you can view :
```
cat my-minimal-setup.sh
```
