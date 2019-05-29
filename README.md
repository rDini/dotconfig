# dotconfig

What I had to install, run or compile:

$ sudo dnf copr enable gumieri/sway
$ sudo dnf copr enable tofik/sway
$ sudo dnf install sway waybar wlroots wayland-protocols swaylock libpulse pulseaudio-libs libdbusmenu-gtk3 libnl3 cmake wayland-client wayland libwayland-client xorg-x11-server-Xwayland fmt mako playerctl jq langpacks-pt_BR scrot 


# Other that I had to use to build suplementary things:

$ sudo dnf install gcc-go ninja-build meson git libinput make libsigc++ 

# To make the lockscreen work:

$ git clone https://github.com/r00tman/corrupter
$ cd corrupter && go build
$ sudo dnf install gcc-go
$ go build

$ sudo cp corrupter /usr/local/bin/
