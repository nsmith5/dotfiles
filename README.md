# Configuration Files


This repository hosts my configuration files for command line programs that I
use frequently including git, vim and tmux. I use
[rcm](https://github.com/thoughtbot/rcm) for managing these so, to get started:

```
$ cd $HOME
$ git clone https://code.nfsmith.ca/nsmith/dotfiles .dotfiles
$ sudo dnf install -y rcm 	# Or equivalent
$ rcup
```

The signing key in my gitconfig is hardcoded so the only immediate change worth
pursuing is to update `.gitconfig` file.

## How does it work?

[rcm](https://github.com/thoughtbot/rcm) is a really neat program. The idea is
to symlink every file of the form `~/.dotfiles/x` to a file `~/.x`. This is
acheived by running `rcup`. A current dotfile may be promoted to this pattern
by running `mkrc ~/.mynewconfig`.
