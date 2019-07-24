#!/bin/bash

git clone https://github.com/lieddy/vim-ide.git
cd vim-ide
sudo sh installVim.sh

sudo apt-get install zsh
chsh -s /bin/zsh

sudo apt-get install git

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo apt-get install autojump
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
sed -i 's/plugins=(/plugins=(zsh-autosuggestions /' ~/.zshrc

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
plugins=( [plugins...] history-substring-search)
echo "source zsh-history-substring-search.zsh" >> ~/.zshrc
echo "bindkey -M vicmd '^P' history-substring-search-up" >> ~/.zshrc
echo "bindkey -M vicmd '^N' history-substring-search-down" >> ~/.zshrc

source ~/.zshrc
