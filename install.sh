#! /bin/sh

pwd=$(PWD)

for i in .??*
do
    [[ "$i" == ".DS_Store" ]] && continue
    [[ "$i" == ".git" ]] && continue

    ln -s $pwd/$i ~/$i
done
