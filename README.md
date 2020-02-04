<p style="text-align:center;">
  <img src="terminal-icon.png"  alt="Terminal icon"/>
</p>
<p style="text-align:center;">
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
1. Run `sudo softwareupdate -i -a` to update your machine
1. Run `xcode-select --install`

## Install

`sh installer` 

1. Install all apps listed on [Brewfile](Brewfile);
1. Install [antigen](https://github.com/zsh-users/antigen) and [Oh My Zsh](https://ohmyz.sh/) 

### Local Brewfile

To add your own list of apps to the brew installation process, create your own 
[Brewfile](https://github.com/Homebrew/homebrew-bundle) on your home directory (`~/.Brewfile`) 

## Bootstrap

`sh bootstrap` 

1. Make a copy of all `.zsh` file to `$HOME/.dotfiles`
1. Configure the [zsh](http://www.zsh.org/) using files in the hierarchy:

| Pattern            | Description                                             |
|--------------------|---------------------------------------------------------|
| dir/*.zsh          | loaded into your environment.                           |
| dir/path.zsh       | loaded first and is expected to setup $PATH or similar. |
| dir/completion.zsh | loaded last and is expected to setup autocomplete.      |
| dir/*.symlink      | copy (hide) into your $HOME.                            |

### Local config

To create your own configurations create a `~/.localrc` and it will be loaded by [zsh](http://www.zsh.org/) 
