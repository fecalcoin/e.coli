
Debian
====================
This directory contains files used to package fecald/fecal-qt
for Debian-based Linux systems. If you compile fecald/fecal-qt yourself, there are some useful files here.

## fecal: URI support ##


fecal-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install fecal-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your fecal-qt binary to `/usr/bin`
and the `../../share/pixmaps/fecal128.png` to `/usr/share/pixmaps`

fecal-qt.protocol (KDE)

