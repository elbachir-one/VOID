# Wellcom to VOID

## Part 1:
echo "Updating The System"
sudo xbps-install -Syy
sudo xbps-install -u xbps
sudo xbps-install Syu

## Part 2:
echo "Installing The Necessary Stuff"
sudo xbps-install -S base-devel xorg libXft-devel libX11-devel libXinerama-devel git chromium nodejs htop mpv feh terminus-font nerd-fonts-ttf lsd

## Part 3:
echo "Setup A Window Manager (DWM)"
mkdir suckless
cd suckless
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
cd dwm
make
sudo make clean install
cd ..
cd st
make
sudo make clean install
cd ..
cd dmenu
make
sudo make clean install
cd
touch ~/.xinitrc
echo "setxkbmap us &" >> .xinitrc
echo "exec dwm" >> .xinitrc
echo "startx" >> .bash_profile

sudo reboot
