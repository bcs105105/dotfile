#!/bin/bash

workdir="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if ! command -v curl vim tmux >/dev/null; then
	exit 1
fi

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
	https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

for file in vimrc tmux.conf; do
    cp $workdir/$file ~/.$file
done

cp -r $workdir/after ~/.vim

vim +PlugInstall +qall
