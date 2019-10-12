#! /bin/bash

CD=`pwd`
ln -s ${CD}/.tmux.conf ~/.tmux.conf
ln -s ${CD}/.gitconfig ~/.gitconfig
ln -s ${CD}/.vimrc ~/.vimrc
ln -s ${CD}/.git-completion.bash ~/.git-completion.bash
ln -s ${CD}/.aliases ~/.aliases
ln -s ${CD}/.vim ~/.vim
echo "source ~/.git-completion.bash" >> ~/.bashrc
echo "source ~/.aliases" >> ~/.bashrc
echo "PS1='[\u@\h \W\$(__git_ps1 \" (%s)\")]\$ '" >> ~/.bashrc
