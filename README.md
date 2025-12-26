# dotfiles

my dotfiles.

## :ant: Supported dotfiles

### :shell: Bash

* `.bash_profile`

### :shell: Zsh

* `.zshrc`
  * `.functions`

### Others

* `.aliases`
  * my alias list.
* `.gitconfig`
* `.aliases`
  * `eza` as `ls` if exists.
  * if `podman` exists and `docker` does not exist, alias `docker` to `podman`.
  * `openvs`: open with VSCode.
* `.gitignore`
  * [macOS](https://raw.github.com/github/gitignore/ce6f84024931408ce801808fe9f4587f7588b283/Global/macOS.gitignore)
* `.zshrc`
* `.tmux.conf`
  * change prefix to `C-t` from `C-b`.

## :anchor: How to install

```sh
git clone github.com:tamada/dotfiles.git
cd dotfiles
./install.sh
```

## :scroll: License

[CC0 1.0](https://creativecommons.org/publicdomain/zero/1.0/)
