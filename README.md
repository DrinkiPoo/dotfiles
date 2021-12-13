# README

## About

I intend to keep my config files in this folder and symlink them to appropriate locations. I am also maintaining a list of packages I've installed on my machine so it will be easier to install all of them again in a fresh new system. Anything that will help me recreate my current system in a new machine will be stored in this folder.

## Config files and symlinks

- bashrc: ~/.bashrc
- tmux: ~/.tmux.conf
- kitty-conf: ~/.config/kitty/kitty.conf
- xmodmap: ~/.Xmodmap
- vim/plug-config/init.vim: ~/.config/nvim/init.vim
- vim/coc-settings.json: ~/.config/nvim/coc-settings.json

## System Backup

### Updating package list

1. Update pkglist.txt with `pacman -Qqetn > pkglist.txt` after installing new package. This command will writeout the latest explicitely installed packages to pkglist.txt. Flags are as follows:

- Q => Query
- q => quiet (package versions are not included)
- e => explicit (exclude dependencies because that's messy and redundant)
- t => this option excluded packages that are already dependencies of other packages
- n => exclude foreign packages like those installed from the AUR

Run `sudo pacman -S --needed - < pkglist.txt` in order to install packages in a new system. Do not forget the --needed flag if you dont want to reinstall packages already present in you system.

2. Update foreignpkglist with `pacman -Qqem`

- m => only inlude foreign packages (AUR)

There is no way to install the AUR packages from the command line unless you use some kind of helper. It's just better to google for these packages, git clone then into the ~/AUR directory and install them with `makepkg -si` from inside the inidvidual package directories.

3. Manually update foreignpkgaur.txt by pasting the git clone urls everytime you install a new package from the AUR. Write a script to loop through that file in order to install all the AUR packages.

### Documentation

1. Documentation for system maintenance can be found in the [Arch Wiki](https://wiki.archlinux.org/title/Pacman/Tips_and_tricks#List_of_installed_packages)
