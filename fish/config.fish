fish_vi_key_bindings

export EDITOR='vim'

source ~/.config/fish/aliases.fish

### Added by the Heroku Toolbelt
set PATH /usr/local/heroku/bin $PATH
### Add psql to PATH
set PATH $PATH /Applications/Postgres.app/Contents/Versions/9.4/bin

### Add vim to path so locally compiled version takes precedence over Apple's
set PATH /usr/local/bin/vim $PATH

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
set PATH /Library/Frameworks/Python.framework/Versions/3.5/bin $PATH

### Add TeX to the path
set PATH $PATH /Library/TeX/Distributions/Programs/texbin

# Virtualfish
export VIRTUALFISH_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Code
export VIRTUALFISH_DEFUALT_PYTHON=/Library/Frameworks/Python.framework/Versions/3.5/bin/python3
eval (python -m virtualfish compat_aliases)
