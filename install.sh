#!/bin/sh

# Archive existing dot files and symlink to the new ones
# Run from ~/dotfiles

# All dot files apart from .git, . and ..
dotFiles=(`ls -da .* | grep -Pxv '\.git|\.+'`)

# Existing dot files to archive
toArchive=()

cd ~

# Archive: Find clashes and tarball+gzip them
for i in ${dotFiles[*]}; do
	toArchive=(${toArchive[@]} `ls -d $i`)
done
if [ ${#toArchive[*]} != 0 ]; then
	archiveFile="dotfiles"`date +%Y%m%d`".tar.gz"
	tar czf $archiveFile ${toArchive[*]} --remove-files
fi

# Create symlinks
for i in ${dotFiles[*]}; do
	dotFileLink="dotfiles/"$i
	ln -s $dotFileLink $i
done
