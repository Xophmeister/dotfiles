# Dotfiles, Oo-oo!

* Install with `git clone --recursive` to also download submodules.
* Run `sync` to tarball any clashes in $HOME, before symlinking to the
  dotfiles (apart from `.git`, if they exist) in `public` and `private`.

## Private Dotfiles

`private` is symlinked to `../dotfiles-private`; clone to here for the
private dotfiles. This contains things like `.ssh`, `.gnupg`,
`.gitconfig`, etc.

## Public Dotfiles

### Git

* `.gitignore-global`

### Vim

* `.vimrc`
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

### Z Shell

* `.zprofile`
* `.zshrc`
* [`.oh-my-zsh/`](https://github.com/robbyrussell/oh-my-zsh)

### tmux 

* `.tmux.conf`
