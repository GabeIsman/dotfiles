### To install

```
git clone git@github.com:vim/vim.git
cd vim
./configure --with-features=huge \
            --enable-multibyte \
            --enable-rubyinterp \
            --enable-pythoninterp \
            --enable-python3interp \
            --enable-perlinterp \
make
make install
# You made need to do update the PATH to set /usr/local/bin ahead of /usr/bin
# for this to be the # default vim.

git clone this repo
ln -s dotfiles/vim ~/.vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
brew install fzf
brew install ripgrep
vim +PluginInstall +qall
npm install -g typescript
~/.vim/bundle/YouCompleteMe/install.py
```

This should be turned into a proper script.
