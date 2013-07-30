#!/bin/bash
#######################
# install like this:
# ~$ cd dotfiles/
# ~$ ./install.sh
#######################

######### vars
dir=~/dotfiles
old_dir=~/dotfiles.backup
files="bash_profile bashrc emacs gitconfig gitconfig.local hashrc profile screenrc tmux.conf vimrc zshrc"

#######################

######### creating backup... 
echo -n "Creating $old_dir for to store existing dotfiles in ~ ..."
mkdir -p $old_dir
echo "DONE!"

######### changing dir to $dir
echo -n "Changing to the $dir directory..."
cd $dir
echo "DONE!"

######### backing up dotfiles into $old_dir...
for file in $files; do 
	echo "Backing up the old .files..."
	mv ~/.$file $old_dir
	echo "DONE! Creating symlinks now..."
	ln -s $dir/$file ~/.$file
done
echo "GOOD JOB! All of your old dotfiles should be backed up"
echo "BYE BYE!"
