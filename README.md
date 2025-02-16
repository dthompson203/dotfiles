# My gnu stow dotfiles
Initial prerequisites to install are: alacritty, tmux, Neovim, and starship.
## Table of Contents
- [Prerequisites](#Prerequisites)
- [Installation](#Installation)
- [Neovim](#nvim_config)
- [zshrc](#zsh-config)
- [bash](#bash-config)
- [Alacritty](#alacritty_config)
- [Starship](#starship_config)

## Prerequisites
### Mac
### Linux
- Arch based distro preferred (arch or in my case Manjaro)
- Wayland with hyprland (I used the ML4W install scripts)
  - This installs Waybar and a few other riced out apps and themes
#### Install a Nerd font (ShureTechMono)
- Download and install my favorite Nerd font (otherwise you'll have to configure your own)
- https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/ShareTechMono.zip
- Create this folder:
  > 'mkdir -p ~/.local/share/fonts'
- Unzip with:
  > 'unzip ~/Downloads/ShareTechMono.zip -d ~/.local/share/fonts'
- Install with:
  > 'fc-cache -fv'
- Confirm installation with:
  > fc-list | grep "ShureTechMono"'

## Installation
First thing you want to do is create a dotfiles folder in your home directory.
Next cd into the directory and clone the dotfiles repo inside of it


## Neovim

## tmux

## bash

## Alacritty

## Starship

## Mac specific configurations

### zsh config
- This file is primarily for my Macbook. I don't forsee switching to zsh on my hyprland box, because I don't think it will add a lot of value. Also I iomagine this file will contain a lot of things not applicable to a PC like the keybinds. I imagine many of my application paths will likely be different as well.
