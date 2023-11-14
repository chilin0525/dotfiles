# dotfiles

## tmix

* reload config file:
	```
	$ tmux source-file ~/.tmux.conf
	```

## nvim

* install nvim first:
  * MacOS:
    ```
    $ brew install neovim
    ```
  * Linux:
    ```
    $ apt install neovim
    ```
* install `node 20.x` for COC:
  ```
  $ curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash - &&\
  sudo apt-get install -y nodejs
  ```
* put config into correct path:
  ```
  $ mkdir ~/.config
  $ cd dotfiles
  $ cp -r nvim ~/.config
  ```
* plugin manager: [vim plug](https://github.com/junegunn/vim-plug)
  * install:
    ```
    $ sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
         https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
    ```
  * `$ nvim ~/.config/nvim/init.vim`
    ```
    :PlugInstall
    ```
* COC install language server:
  ```
  : CocInstall coc-pyright
  : CocInstall coc-pylsp
  : CocInstall coc-sh
  ```

## command

* tmux:
  * prefix: ````
  * if want to type ```` , just type twice ````
* nerdtree:
  * switch pane: `<Ctrl>+w` + left/right/top/down key
  * open file in vertical: `i`
  * open file in horizental: `s`
  * next tab: `gt`
  * previous tab: `gT`
  * open file in new tab: `t`
* nerdcommenter:
  * comment: `\` + `cc`
  * uncomment: `\` + `cu`

