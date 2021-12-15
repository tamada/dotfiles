#! /bin/sh

pwd=$(PWD)

for i in .??*
do
    [[ "$i" == ".DS_Store" ]] && continue
    [[ "$i" == ".git" ]] && continue

    if [[ ! -e $HOME/$i ]]; then
        ln -s $pwd/$i $HOME/$i
        echo "install $i to $HOME"
    fi
done
