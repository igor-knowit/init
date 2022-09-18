Neovim
======

Install
-------

    $ sudo bash ./install-neovim.sh

Plugin
------

    $ sudo bash ./package-manager.sh


Setup
-----

update-alternatives + copy init.vim to config dir

    $ sudo bash ./setup.sh

Nakon setupa pokreni nvim

    :PlugInstall

Errors
------

### AppImages require FUSE to run.


    $ sudo apt install libfuser2
