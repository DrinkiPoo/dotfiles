# README

## System Backup

### Updating package list

1. Update pkglist with `pacman -Qqetn > pkglist.txt` after installing new package

- Q => Query
- q => quiet (package versions are not included)
- e => explicit (exclude dependencies because that's messy and redundant)
- t => this option excluded packages that are already dependencies of other packages
- n => exclude foreign packages like those installed from the AUR

2. Update foreignpkglist with `pacman -Qqem`

- m => only inlude foreign packages (AUR)

### Documentation

1. Documentation for system maintenance can be found in the [Arch Wiki](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#List_of_installed_packages)
