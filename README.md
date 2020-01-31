<p align="center">
  <img src="terminal-icon.png" />
</p>
<p align="center">
  This is my way to personalize my terminal. 
</p>

Based on [holman's article](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/), 
it isn't a fork from [holman's dotfiles](https://github.com/holman/dotfiles) but 
it's using some files stoled from there. 🤫 

Actually I also made it a way to manage the apps that I use on my machine 
using [mas](https://github.com/mas-cli/mas) (for apps I use from Apple Store) and [Homebrew](https://brew.sh) 
(for command-line and some other apps not available on Apple Store).

## Prerequisites

1. [Homebrew](https://brew.sh)

### Mac

If you are on Mac I recommend:

1. Make sure you already have logged in on Apple store to be able to use  [mas](https://github.com/mas-cli/mas)
1. Run `sudo softwareupdate -i -a` to make sure your machine is updated
1. Run `xcode-select --install`

## Install

`sh installer` will: 

1. Install all apps listed on [Brewfile](Brewfile);
1. Install [antigen](https://github.com/zsh-users/antigen) and [Oh My Zsh](https://ohmyz.sh/) 

### Local Brewfile

If you wanna keep your own [Brewfile](https://github.com/Homebrew/homebrew-bundle), 
you can create a `~/.Brewfile` and put your apps there. 

## Bootstrap

`sh bootstrap` will make a copy of all `.zsh` file to `$HOME/.dotfiles`and 
configure the [zsh](http://www.zsh.org/) using files in the hierarchy:

| Pattern            | Description                                             |
|--------------------|---------------------------------------------------------|
| dir/*.zsh          | loaded into your environment.                           |
| dir/path.zsh       | loaded first and is expected to setup $PATH or similar. |
| dir/completion.zsh | loaded last and is expected to setup autocomplete.      |
| dir/*.symlink      | copy (hide) into your $HOME.                            |

### Local config

If you wanna keep some configuration locally you can create a `~/.localrc` and 
put it there to be loaded by [zsh](http://www.zsh.org/) 
