# SUCKLESS FOR VOID AUTO INSTALL SCRIPT

### Change the privileges so that you don't need to type your passwerd every time.

`$ sudo EDITOR=vim visudo`

uncoment this line (#%wheel ALL=(ALL:ALL) NOPASSWD: ALL) ===> (%wheel ALL=(ALL:ALL) NOPASSWD: ALL)

### Git the script.

`$ sudo xbps-install -Syy && sudo xbps-install -u xbps`

`$ sudo xbps-install -S git`

`$ git clone https://github.com/elbachir-one/VOID`

`$ chmod +x VOID/void.sh`

`$ ./VOID/void.sh`

### End
