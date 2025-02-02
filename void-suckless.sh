# Wellcom to VOID SUCKLESS

## Part 1:
echo "Updating The System"
sudo xbps-install -S
sudo xbps-install -uy xbps
sudo xbps-install -Suy

## Part 2:
echo "Installing The Necessary Things"
sudo xbps-install -Sy base-devel xorg libXft-devel libX11-devel libXinerama-devel\
	git alsa-utils chromium htop mpv feh terminus-font noto-fonts-cjk\
	noto-fonts-emoji noto-fonts-ttf

## Part 3:
echo "Setting up The Suckless DE"
mkdir suckless
cd suckless/
git clone https://git.suckless.org/dwm
git clone https://git.suckless.org/st
git clone https://git.suckless.org/dmenu
cd dwm/
make
sudo make clean install
cd ..
cd st/
make
sudo make clean install
cd ..
cd dmenu/
make
sudo make clean install
cd

## Part 4:
touch ~/.xinitrc
echo "exec dwm" >> .xinitrc
echo "startx" >> .bash_profile

echo "The System is Going to Reboot"
sudo reboot
