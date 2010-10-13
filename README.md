Dotvim
======

About
-----

A set of VIM configuration files. Uses tpope's excellent [pathogen](http://www.vim.org/scripts/script.php?script_id=2332) for easy handling of VIM plugins.

Setup is inspired by [drew@vimcasts](http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)

Installation
------------

    git clone git://github.com/janne/dotvim.git ~/.vim

Create symlinks
---------------

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory and fetch submodules
-----------------------------------------------------

    cd ~/.vim
    git submodule update --init
