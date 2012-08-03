Dotvim
======

About
-----

A set of VIM configuration files. Uses [vundle](https://github.com/gmarik/vundle) for easy handling of VIM plugins.

Installation
------------

    git clone git://github.com/janne/dotvim.git ~/.vim

Create symlinks
---------------

    ln -s ~/.vim/vimrc ~/.vimrc
    ln -s ~/.vim/gvimrc ~/.gvimrc

Switch to the `~/.vim` directory and fetch submodules
-----------------------------------------------------

Start vim and run

    :BundleInstall

Update submodules
-----------------

When you later want to update all submodules:

    :BundleInstall!
