#!/bin/sh

# Archive existing dot files and symlink to the new ones
# Run from ~/dotfiles

# All dot files apart from .git
dotFiles=(`ls -d .* | grep -v '.git'`)

# Existing dot files to archive
toArchive=()

cd ~

# Archive
for i in ${dotFiles[*]}; do
	toArchive=(${toArchive[@]} `ls -d $i`)
done
if [ ${#toArchive[*]} != 0 ]; then
	archiveFile="dotfiles"`date +%Y%m%d`".tar"
	tar -cf $archiveFile $toArchive | gzip -9 $archiveFile

	# Delete clashes
	rm -rf $toArchive
fi

# Create symlinks
for i in ${dotFiles[*]}; do
	dotFile="dotfiles/"$i
	ln -s $dotFile $i
done
