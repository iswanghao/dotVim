The vimrc file maintained by iswanghao

https://github.com/iswanghao/dotVim


====
Installation:

    git clone git://github.com/iswanghao/dotVim.git ~/.vim

Create symlinks:

    ln -s ~/.vim/vimrc ~/.vimrc

Switch to the `~/.vim` directory, and fetch submodules:

    cd ~/.vim
    git submodule init
    git submodule update

Useful notes:

====
Pathogen.vim (http://www.vim.org/scripts/script.php?script_id=2332)
    Place the file in ~/.vim/autoload
    Remember to add "filetype off" before the following two lines, (because Pathogen must come before "filetype on" and system vimrc may turn it on very early, esp. in Debian) :
        call pathogen#runtime_append_all_bundles()
        call pathogen#helptags()

====
For Vim-Latex (only for the 1st time, as it is already in /.vim/bundle/ of my git repo)

    Install vim-latexsuite from Ubuntu Software Centre
    Enable it using vim-addons
        vim-addons install latex-suite -t ~/.vim/bundle/vim-latex
    
====
For push and pull with GitHub.com
    
    Set-up: http://help.github.com/linux-set-up-git/
    git remote add origin git@github.com:iswanghao/dotVim.git
    git push origin master

====
Acknowledgements

    nelstrom (https://github.com/nelstrom/dotvim) and his post (http://vimcasts.org/episodes/synchronizing-plugins-with-git-submodules-and-pathogen/)
    
    vgod (https://github.com/vgod/vimrc) and his post (http://blog.vgod.tw/2011/03/19/vimrc/)

