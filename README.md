# vim_setup

### WHY?
After over a year of using Atom, one day it just stopped working right. Bugs
were crawling all over the place and my computer's CPU was being eaten alive. It
eventually got to a point that I was just so fed up with it and couldn't take it
anymore. To further back up these claims, i ran into this article,
https://medium.freecodecamp.org/why-i-still-use-vim-67afd76b4db6. Which very well
explained the problems with Atom that i was experiencing. So, i decided to undergo
the adventure of VIM and see if i could set up an environment that was just as 
fluid and easy as using Sublime or Atom.

### SO WHY NOT SUBLIME?
I'm not paying for a text editor...

### ABOUT THIS REPO
This is my initial set up for a vim environment. It provides all the basic
functionality that Atom or sublime would provide.

### SETUP
* Pull down this repo into your root directory or copy and paste into your 
.vimrc file in your root.
* Install Brew (if you don't already have it)
* Using Brew install vim (this is a newer updated version, which allows for all 
the nice plugins in this repo)
* install plug-vim - vim https://github.com/junegunn/vim-plug
* Restart your terminal and open your vim file `vim .vimrc`
* Type :PlugInstall and hit enter - All the plugins should start installing
* quit out of everything `:q` and go open a new project directory `vim my_project`

####NOTE:
There are several plugins in this list that require additional set up. Mostly 
it's YouCompleteMe, which provides autocompletion.
