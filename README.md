# Dotfiles, Oo-oo!

My configuration files, as I migrate from Windows to \*nix, via Cygwin!

## Synchronisation Script

* sync

Run `./sync` from `~/dotfiles` to tarball all the clashing dotfiles in
`~/`, then symlink to the ones in this repository.

## Git

* .global-ignore.git

`.git*` files are ignored by the synchronisation script, so we use an
alternative naming convention for Git dotfiles. We don't include
`.gitconfig` because it contains sensitive data.

TODO Update synchronisation script to generate `.gitconfig`

## Vim

* .vimrc
* Plugins, etc.
  * [Gundo](http://sjl.bitbucket.org/gundo.vim/)
  * [NERDCommenter](https://github.com/scrooloose/nerdcommenter) TODO
  * [NERDTree](https://github.com/scrooloose/nerdtree) TODO
  * [Supertab](https://github.com/ervandew/supertab) TODO
  * [Syntastic](https://github.com/scrooloose/syntastic) TODO
  * [Tabular](https://github.com/godlygeek/tabular)
  * [Tagbar](http://majutsushi.github.com/tagbar/) TODO
  * [vim-colors-solarized](https://github.com/altercation/solarized)
  * [vim-fugitive](https://github.com/tpope/vim-fugitive)
  * [vim-gnupg](http://gitorious.org/vim-gnupg)
  * [vim-latex](http://vim-latex.sourceforge.net) TODO
  * [vim-markdown](https://github.com/tpope/vim-markdown)
  * [vim-pathogen](https://github.com/tpope/vim-pathogen)
  * [vim-powerline](https://github.com/Lokaltog/vim-powerline)

## Z Shell

* .zprofile
* .zshrc
* [.oh-my-zsh/](https://github.com/robbyrussell/oh-my-zsh)

## GNU Screen

* .screenrc
