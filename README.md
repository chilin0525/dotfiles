# dotfiles

## tmix

TBD.

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
* put config into correct path:
  ```
  $ mkdir ~/.config
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
* plugins
  * []()
