#! /bin/sh

for i in .??*
do
    [[ "$i" == ".DS_Store" ]] && continue
    [[ "$i" == ".git" ]] && continue

    ln -s $i ~/$i
done
