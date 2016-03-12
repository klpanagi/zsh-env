#!/bin/bash

currentDir=`pwd`
echo currentDir
BulletTrainUrl="https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme"
powerlevel9k_url="git@github.com:bhilburn/powerlevel9k.git"

# Install zsh
#sudo apt-get install zsh

zsh --version || \
  {
    echo -e "[Error]: Zsh was not installed correctly?!!";
    exit 1;
  }

# Change default shell to use zsh
#chsh -s $(which zsh)

#sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

mkdir -p "${HOME}/.oh-my-zsh/custom/themes"
cd "${HOME}/.oh-my-zsh/custom/themes"
wget ${BulletTrainUrl}
git clone $powerlevel9k_url

rm "${HOME}/.zshrc"
ln -s "${currentDir}/my_zshrc" ~/.zshrc
