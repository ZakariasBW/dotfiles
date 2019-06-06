#!/bin/bash

# Install packages
brew install vim
brew install bash-completion


# Setup dotfiles
cd $HOME
git clone --separate-git-dir=$HOME/.dotfiles https://github.com/ZakariasBW/dotfiles.git
shopt -s expand_aliases
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
echo "alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'" >> $HOME/.bash_profile
dotfiles config --local status.showUntrackedFiles no

# Setup bash completion
echo '[[ -r "/usr/local/etc/profile.d/bash_completion.sh" ]] && . "/usr/local/etc/profile.d/bash_completion.sh"' >> $HOME/.bash_profile
echo 'GIT_PS1_SHOWDIRTYSTATE=true' >> $HOME/.bash_profile
echo "export PS1='[\u@mbp \w$(__git_ps1)]\$ '" >> $HOME/.bash_profile

# Setup git excludes
echo '.DS_Store' >> $HOME/.gitexcludes

# Import dotfiles
dotfiles checkout macOS
dotfiles checkout .

# Setup vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# Clean up
rm -r dotfiles
rm README.md install.sh

echo 'Complete, restarting shell: " $HOME/.bash_profile" '
source $HOME/.bash_profile


