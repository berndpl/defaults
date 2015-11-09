Setup
=====

#### t

1. Permissions `chmod 755 +x t`
1. Set path in `~/.config/fish/config.fish` by adding `set -gx PATH $PATH /Users/name/Dropbox\ \(Personal\)/Apps/defaults`

#### Symlinks

1. Go to home `cd ~` then `ln -s Dropbox\ \(Personal\)/Apps/defaults/.vimrc`


#### config.fish

```
# Global variables
set -xU DELIVER_USER "you@address.com"
set -xU XCODE_INSTALL_USER "your@address.de"
# Path
set -gx PATH $PATH /Users/name/Dropbox\ \(Personal\)/Apps/defaults
```
