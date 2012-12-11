# Dotfiles, Oo-oo!

Install with `git clone --recursive`, to also download submodules.

## Synchronisation Script

* sync

Run `./sync` from `~/dotfiles` to tarball all the clashing dotfiles in
`~/`, then symlink to the ones in this repository.

TODO
* This needs to be fixed to work with zsh
* Sync the private dotfiles

## Private Dotfiles

`private` is ignored by Git, but contains things like `.ssh`, `.gnupg`,
`.gitconfig`, etc.

TODO
* Make this a submodule and push to a *private* repo

## Git

* .global-ignore.git

`.git*` files are ignored by the synchronisation script, so we use an
alternative naming convention for Git dotfiles. We put `.gitconfig` in
the private directory.

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
