#!/usr/bin/bash

# Install packages
sudo apt-get update
sudo apt-get install git -y
sudo apt-get install vim -y


# Setup dotfiles
cd $HOME
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ZakariasBW/dotfiles.git
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bashrc
dotfiles config --local status.showUntrackedFiles no
rm -r $HOME/dotfiles

# Import dotfiles
dotfiles checkout .tmux*
dotfiles checkout .vim*

# Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall




