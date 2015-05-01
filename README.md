# Dotfiles, Oo-oo!

* Install with `git clone --recursive` to also download submodules.

* It's probably a good idea to checkout the master branch in each
  submodule with `git submodule foreach --recursive git checkout master`

* Run `sync` to tarball any clashes found in `$HOME` to `backup`, before
  symlinking to the dotfiles (apart from `.git`, if it exists) in
  `public` and `private`.

## Private Dotfiles

`private` is symlinked to `../dotfiles-private`; clone to here for the
private dotfiles. This contains things like `.ssh`, `.gnupg`,
`.gitconfig`, etc.
