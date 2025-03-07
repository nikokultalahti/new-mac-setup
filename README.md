# About The Project

This contains a couple of scripts that I use to set up a new Mac computer. 
The other sets up some MacOS system settings while the other installs apps that I need/want in my computer.

This is a work-in-progress and gets updated whenever I change apps/tools that I use.

## Getting Started

This project assumes that you have a clean, newly setup MacOS with git installed and you are able to run terminal commands.

### Installation

1. Clone the repo with `git clone https://github.com/nikokultalahti/new-mac-setup.git`
2. Move into the terminal with `cd new-mac-setup`

## Usage

1. Run `sh 1-prep-os.sh`to update the OS and install XCode Developer Tools -> Reboot computer
2. CD into the `new-mac-setup` folder and run `sh 2-install-software`.sh
3. Run `sh 3-config-os.sh` -> Reboot computer

You should now have updated computer with suitable settings and software installed.
Next one can move to install dotfiles with `chezmoi`

## Roadmap

[] Set themes for applications (iTerm2, VSCode)
[] Set which items to show/hide in MacOS menu bar (hide input source, show bluetooth)
[] Set MacOS "globe" button to do nothing
[] Set to use F1, F2 etc. as standard function keys
[] Implement dotfiles installation

## Contact

- Niko Kultalahti, hello@nikokultalahti.com

## Acknowledgments

https://github.com/mathiasbynens/dotfiles/blob/main/.macos