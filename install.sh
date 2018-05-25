#!/bin/bash
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cp -r $DIR/bash/.bash ~/
cp $DIR/bash/.bashrc ~/ 


if [[ -x "$(command -v zsh)" ]]; then
    cp $DIR/zsh/.zshrc ~/.zshrc
    if [[ -d ~/.oh-my-zsh ]]; then
	cp $DIR/zsh/lso.zsh-theme ~/.oh-my-zsh/themes/
    fi
   
fi

cp -r $DIR/.vim ~/
cp $DIR/.vimrc ~/.vimrc

if [[ -x "$(command -v git)" ]]; then
	cp $DIR/.gitconfig ~/
	cp $DIR/.gitmessage ~/
fi

echo "install sucessfull you can restart your terminal !"
