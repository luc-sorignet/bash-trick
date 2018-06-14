#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILE_DIR=$DIR/dotfiles
cp -r $DIR/shell-conf/. ~/.bash-trick
cp $DOTFILE_DIR/bash/.bashrc ~/


if [[ -x "$(command -v zsh)" ]]; then
    cp $DOTFILE_DIR/zsh/.zshrc ~/.zshrc
    if [[ -d ~/.oh-my-zsh ]]; then
        cp $DOTFILE_DIR/zsh/lso.zsh-theme ~/.oh-my-zsh/themes/
    fi
fi

cp -r $DOTFILE_DIR/conf/. ~/

vim +PluginInstall +qall
echo "install sucessfull you can restart your terminal !"
