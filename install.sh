#!/bin/sh

# Record the location of this repo.
config_location=`pwd`

echo $config_location

# Links
ln -sviw "$config_location/.profile" ~/.profile
ln -sviw "$config_location/.profile" ~/.zprofile

ln -sviwh "$config_location/vim/" ~/.vim
ln -sviw "$config_location/.agignore" ~/.agignore

ln -sviwh $config_location/git/.git{_template,config,ignore} ~

mkdir -p ~/.config
ln -sviwh "$config_location/karabiner/" ~/.config/karabiner
ln -sviwh "$config_location/fish/" ~/.config/fish
ln -sviwh "$config_location/nvim/" ~/.config/nvim
