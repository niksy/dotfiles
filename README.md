# Dotfiles by Ivan Nikolić

Home is where the dotfiles are. These are mine.

**Be advised**, my Bash skills are *really* limited, before working on this they were mainly based on setting commands in shell window :)  
So if you see some error, or you know a better way on how to achieve specific task, please send me a feedback :)  

Also, installation script is mostly my handywork, so if you’re unsure on what will happen, review it or do everything manually :)

## Installation

1. Clone the repository in some directory (maybe `~/dotfiles`?):  
	
	```bash
	$ git clone https://github.com/niksy/dotfiles.git
	```

2. Enter the directory where you’ve cloned dotfiles and run install script with `link` argument:  
	
	```bash
	$ sh dotfiles link
	``` 

	The script will symlink/copy all the necessary files to `~` directory. Follow instructions after the job is done.

3. To remove created symlinks and/or remove copied files, run same install script inside `dotfiles` directory, but with `unlink` argument:

	```bash
	$ sh dotfiles unlink
	```

4. For your convenience there is a `dotfiles refresh` command which will source all the files (except `.osx_defaults`) if you’ve made some changes. That command is aliased to `dfr` for even more convenience :)  
	
	Also, if you want to view root directory of your dotfiles, command `dotfiles view` will do that for you.

### Custom options

`.extra` and `.gitconfig_extra` can be used to add custom commands without the need to change core files or to add the commands you don’t want to commit to a public repository. These files are also the ones which are not symlinked—instead, they are copied to your `~` directory.  

Example of `.extra` file:

```bash
# PATH additions
export PATH="$HOME/bin:$PATH"

# Set the extra .gitconfig file used for personal settings (modifies ~/.gitconfig)
git config --global include.path "$HOME/.gitconfig_extra"

# Set the computer name which can be used with .osx_defaults file
COMPUTER_NAME="{Le machine}"
```

### Terminal display

`.bash_prompt` and everything related to coloring of display is customized to work with [Solarized Light theme](https://github.com/altercation/solarized). You can find my current OS X terminal preferences inside `.init` directory. Typeface in the screenshot is [DejaVu Sans Mono](http://dejavu-fonts.org/).

![niksy Terminal display](https://raw.github.com/niksy/dotfiles/master/.init/niksy-ss.png)

### OS X defaults

These are some OS X defaults I use, but larger collection can be found in [`.osx` defaults by Mathias Bynens](https://github.com/mathiasbynens/dotfiles/blob/master/.osx) and in the comments at the top of the file in my repository.  

Run the supplied install script with following command (remember, this will work **only** on OS X):

```bash
$ source ~/.osx_defaults
```

### Homebrew

Installing [Homebrew](http://mxcl.github.com/homebrew/) will save your sanity while trying to install packages not available by default on OS X.

I like to install Homebrew and its packages without any automated script, it makes it easier to debug if something goes wrong while installing packages :)

Here is the list of packages I currently use:

* [git](http://git-scm.com/)
* [growlnotify](http://blog.lisp.tw/blog/2012/05/01/mac-install-growlnotify/)
* [meld](http://meldmerge.org/)
* [mysql](http://dev.mysql.com/doc/refman/5.5/en/)
* [node](http://nodejs.org/)
* [tree](http://mama.indstate.edu/users/ice/tree/)
* [php](http://php.net/)
* [phpmyadmin](http://www.phpmyadmin.net/home_page/index.php)
* [yuicompressor](http://yuilibrary.com/projects/yuicompressor)
* [closure-compiler](https://developers.google.com/closure/compiler/)
* [libicns](http://icns.sourceforge.net/)
* [icoutils](http://www.nongnu.org/icoutils/)

You can find a whole list of available packages (along with other repositories) on [Braumeister](http://braumeister.org/).

### Sublime Text syntax highlight

If you’re using Sublime Text as your code editor, there is a [package](https://github.com/mattbanks/dotfiles-syntax-highlighting-st2) which will give you proper syntax highlight for these dotfiles. You can install it via [Sublime Text Package Control](http://wbond.net/sublime_packages/package_control).

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
* These articles on how to create [better](http://lifehacker.com/5840450/add-a-handy-separator-between-commands-in-your-terminal-on-mac-os-x-and-linux) [bash](http://net.tutsplus.com/tutorials/other/how-to-customize-the-command-prompt/) [prompt](http://net.tutsplus.com/tutorials/tools-and-tips/how-to-customize-your-command-prompt/)
