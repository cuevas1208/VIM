# VIM
My settings for VIM

Move this files to root:

  mv .vimrc ~/
  mv 03_2_1780__1700_color/ ~/

Install vundle:

  git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

Install Plugins:

  Launch vim and run :PluginInstall
  To install from command line: vim +PluginInstall +qall
  
Install auto-complete
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer
