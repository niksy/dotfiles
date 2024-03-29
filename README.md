# dotfiles

Home is where the dotfiles are.

## Installation

1. Clone the repository in some directory:

	```bash
	git clone https://github.com/niksy/dotfiles.git ~/.dotfiles
	```

1. Enter the directory where you’ve cloned dotfiles and run install script with `link` argument:

	```bash
	sh dotfiles link
	```

	The script will symlink/copy all the necessary files to `~` directory. Follow instructions after the job is done.

1. To remove created symlinks and/or remove copied files, run same install script inside `dotfiles` directory, but with `unlink` argument:

	```bash
	sh dotfiles unlink
	```

### Custom options

`.extra` and `.gitconfig_extra` can be used to add custom commands without the need to change core files or to add the commands you don’t want to commit to a public repository (e.g. company related information). You put them inside your `~` directory.

`.macos_extra` file contains some modifications for installed packages and applications.

### Terminal display

`.bash_prompt` and everything related to coloring of display is customized to work with [Solarized Light theme](https://github.com/altercation/solarized) (specifically, [fork by @tomislav](https://github.com/tomislav/osx-terminal.app-colors-solarized)). You can find my current macOS terminal preferences inside `.init` directory. Typeface in the screenshot is [Consolas](https://en.wikipedia.org/wiki/Consolas).

### macOS defaults

These are some macOS defaults I use, but larger collection can be found in [`.macos` defaults by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.macos) and in the comments at the top of the file in my repository.

Run the supplied install script with following command (remember, this will work **only** on macOS):

```bash
source ~/.dotfiles/.macos
```

### Homebrew

Installing [Homebrew](https://brew.sh/) will save your sanity while trying to install packages not available by default on macOS.

If you want the same control for standard macOS apps, try using [Homebrew Cask](https://caskroom.io/).

Automatic package installation can be done with `.brew` script. This will install standard and binary (Cask) packages.

```bash
~/.dotfiles/.brew
```

#### CLI tools

Before installing Homebrew, you should install Xcode CLI Tools.

If you’re on Mavericks, simply enter `xcode-select --install` inside Terminal window and follow instructions.

If you’re on earlier version of macOS, log in to Apple Developer page and find Command Line Tools package (not the whole Xcode).

To verify that CLI tools are installed, check version of some CLI-tools-provided tool, e.g. `gcc`, via `gcc --version`. If everything is OK, you should see GCC version in your Terminal screen.

## Acknowledgements

The code was taken from many sources and used [dotfiles by Mathias Bynens](https://github.com/mathiasbynens/dotfiles) as starting point.

Other sources and inspiration include:

* [Paul Irish](https://github.com/paulirish/dotfiles)
* [Nicolas Gallagher](https://github.com/necolas/dotfiles)
* [Mislav Marohnić](https://github.com/mislav/dotfiles)
* [Ben Alman](https://github.com/cowboy/dotfiles)
* [Henrik Nyh](https://github.com/henrik/dotfiles)
* [Jan Moesen](https://github.com/janmoesen/tilde)
* [Christian Wesselhoeft](https://github.com/xtian/dotfiles)
* These articles on how to create [better](https://lifehacker.com/5840450/add-a-handy-separator-between-commands-in-your-terminal-on-mac-os-x-and-linux) [bash](https://net.tutsplus.com/tutorials/other/how-to-customize-the-command-prompt/) [prompt](https://net.tutsplus.com/tutorials/tools-and-tips/how-to-customize-your-command-prompt/)
