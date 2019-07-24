#!/bin/bash
sudo apt-get install zsh
chsh -s /bin/zsh

sudo apt-get install git

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

sudo apt-get install autojump
echo ". /usr/share/autojump/autojump.sh" >> ~/.zshrc

git clone git://github.com/zsh-users/zsh-autosuggestions $ZSH_CUSTOM/plugins/zsh-autosuggestions
echo "source $ZSH_CUSTOM/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ~/.zshrc
sed -i 's/plugins=(/plugins=(zsh-autosuggestions /' ~/.zshrc

source ~/.zshrc
