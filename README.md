# SUCKLESS FOR VOID AUTO INSTALL SCRIPT

#### Change the privileges so that you don't need to type your passwerd every time

```bash
sudo visudo
```

**Uncoment this line** `#%wheel ALL=(ALL:ALL) NOPASSWD: ALL` to be
`%wheel ALL=(ALL:ALL) NOPASSWD: ALL`

#### Git the script

```bash
xbps-fetch https://raw.githubusercontent.com/elbachir-one/VOID/refs/heads/main/void-suckless.sh
chmod +x void-suckless.sh
./void-suckless.sh
```
