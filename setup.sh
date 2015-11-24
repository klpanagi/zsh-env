#!/bin/bash

currentDir=$(pwd)
BulletTrainUrl="https://raw.githubusercontent.com/caiogondim/bullet-train-oh-my-zsh-theme/master/bullet-train.zsh-theme"

# Install zsh
sudo apt-get install zsh

zsh --version || \
  {
    echo -e "[Error]: Zsh was not installed correctly?!!";
    exit 1;
  }

# Change default shell to use zsh
chsh -s $(which zsh)

sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

cd "${HOME}/.oh-my-zsh/themes" && wget ${BulletTrainUrl}
rm "${HOME}/.zshrc"
cp "${currentDir}/my_zshrc" ~/.zshrc
