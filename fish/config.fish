fish_vi_key_bindings

export EDITOR='vim'

source ~/.config/fish/aliases.fish

### Added by the Heroku Toolbelt
set PATH /usr/local/heroku/bin $PATH

### Add psql and pg_config to PATH
set POSTGRES_PATH /Applications/Postgres.app/Contents/Versions/latest/bin
if test -d $POSTGRES_PATH
  set PATH $PATH $POSTGRES_PATH
end

# Setting PATH for Python 3.5
# The orginal version is saved in .bash_profile.pysave
set PYTHON3_PATH /Library/Frameworks/Python.framework/Versions/3.5/bin
if test -d $PYTHON3_PATH
  set PATH $PATH $PYTHON3_PATH
end

### Add TeX to the path

set TEX_PATH /Library/TeX/Distributions/Programs/texbin
if test -e $TEX_PATH
  set PATH $PATH $TEX_PATH
end

# Move /usr/local/bin ahead of /usr/bin to allow overriding system binaries
set PATH /usr/local/bin $PATH

# Virtualfish
export VIRTUALFISH_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Code
export VIRTUALFISH_DEFUALT_PYTHON=/Library/Frameworks/Python.framework/Versions/3.5/bin/python3
eval (python -m virtualfish compat_aliases)

# Look into https://github.com/oh-my-fish/oh-my-fish

# Load rbenv and set up path
set PATH /Users/admin/.rbenv/shims $PATH
status --is-interactive; and . (rbenv init -|psub)

# Override fzf default command
export FZF_DEFAULT_COMMAND='rg --files'
