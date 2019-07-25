#!/bin/bash

git clone https://github.com/lieddy/vim-ide.git
cd vim-ide
sudo sh installVim.sh

sudo apt-get install zsh
chsh -s /bin/zsh

sudo apt-get install git
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.unstage 'reset HEAD --'
git config --global alias.last 'log -1 HEAD'

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo apt-get install autojump
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
sed -i 's/plugins=(/plugins=(zsh-autosuggestions /' ~/.zshrc

git clone https://github.com/zsh-users/zsh-history-substring-search ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-history-substring-search
sed -i 's/plugins=(/plugins=(history-substring-search /' ~/.zshrc
echo "source zsh-history-substring-search.zsh" >> ~/.zshrc
echo "bindkey '^p' history-substring-search-up" >> ~/.zshrc
echo "bindkey '^n' history-substring-search-down" >> ~/.zshrc

source ~/.zshrc
