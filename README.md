# .config 

What I had to install, run or compile:

## Add the copr repo to install newer SWAY packages:
```
$ sudo dnf copr enable gumieri/sway
```
You will also need the following repos:
```
repo id                    repo name                          
*fedora                    Fedora 30 - x86_64
*fedora-modular            Fedora Modular 30 - x86_64
google-chrome              google-chrome          
gumieri-sway               Copr repo for sway owned by gumier
*rpmfusion-free            RPM Fusion for Fedora 30 - Free   
*rpmfusion-free-updates    RPM Fusion for Fedora 30 - Free - 
*rpmfusion-nonfree         RPM Fusion for Fedora 30 - Nonfree
*rpmfusion-nonfree-updates RPM Fusion for Fedora 30 - Nonfree
rsawaroha                  rsaw aroha rpms for Fedora/RHEL6+ 
*updates                   Fedora 30 - x86_64 - Updates      
*updates-modular           Fedora Modular 30 - x86_64 - Update
```
```
$ sudo dnf localinstall ./Downloads/rpmfusion-free-release-30.noarch.rpm
$ sudo dnf install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
```
# I made some effort to try to filter all the dependencies, leaving only what is basic to install everything. I hope it will work fine.
      I did a fresh install, so it might be it..

```
$ sudo dnf install mako sway swaylock waybar playerctl jq langpacks-pt_BR libsigc++ lpf-spotify-client pavucontrol python2-devel sway-debugsource xdotool
```

## Some groups installed
```
$ sudo dnf groupupdate multimedia
$ sudo dnf groupupdate sound-and-video
```

## Other that I had to use to build suplementary things:
```
$ sudo dnf install gcc-go ninja-build meson git libinput make libsigc++ 
```
## To make the lockscreen work:
```
$ git clone https://github.com/r00tman/corrupter
$ cd corrupter && go build
$ sudo dnf install gcc-go
$ go build

$ sudo cp corrupter /usr/local/bin/
```
# For a fresh install, Other helpful things to install:

### [rsawaroha-release](https://github.com/ryran/xsos) installed manually : 
```
$ sudo dnf install http://people.redhat.com/rsawhill/rpms/latest-rsawaroha-release.rpm
$ sudo dnf install xsos rsar
```
## For Chrome:
```
$ sudo dnf install fedora-workstation-repositories
$ sudo dnf config-manager --set-enabled google-chrome

$ sudo dnf install google-chrome-stable
```
## Fixing some errors on journalctl from sway:
```
$ sudo dnf install sway-debugsource
$ sudo dnf install libappindicator-*
```
## Installing Spotify:
```
$ lpf approve spotify-client
$ sudo dnf install /var/lib/lpf/rpms/spotify-client/spotify-client-*.rpm
```
## Other packages:
```
sudo dnf install unrar neofetch linphone hexchat 
```
