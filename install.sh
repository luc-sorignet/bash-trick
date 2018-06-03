#!/bin/bash
DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DOTFILE_DIR=$DIR/dotfiles
cp -r $DIR/bash/.bash ~/
cp $DIR/bash/.bashrc ~/


if [[ -x "$(command -v zsh)" ]]; then
    cp $DIR/zsh/.zshrc ~/.zshrc
    if [[ -d ~/.oh-my-zsh ]]; then
        cp $DIR/zsh/lso.zsh-theme ~/.oh-my-zsh/themes/
    fi
fi

cp -r $DOTFILE_DIR/. ~/

vim +PluginInstall +qall
echo "install sucessfull you can restart your terminal !"
