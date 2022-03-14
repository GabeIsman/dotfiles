fish_vi_key_bindings

export EDITOR='vim'

source ~/.config/fish/aliases.fish

set VIMRUNTIME ~/code/oss/vim/runtime

### Added by the Heroku Toolbelt
set PATH /usr/local/heroku/bin $PATH

### Add psql and pg_config to PATH
set POSTGRES_PATH /Applications/Postgres.app/Contents/Versions/latest/bin
if test -d $POSTGRES_PATH
  set PATH $PATH $POSTGRES_PATH
end

# Setting PATH for homebrew installed python3
set PYTHON3_PATH /usr/local/Frameworks/Python.framework/Versions/Current/bin
if test -d $PYTHON3_PATH
  set PATH $PATH $PYTHON3_PATH
end

# Add pipx binaries folder to path
set PIPX_BIN_PATH /Users/gabe/.local/bin
if test -d $PIPX_BIN_PATH
  set PATH $PATH $PIPX_BIN_PATH
end

### Add TeX to the path

set TEX_PATH /Library/TeX/Distributions/Programs/texbin
if test -e $TEX_PATH
  set PATH $PATH $TEX_PATH
end

# Move /usr/local/bin ahead of /usr/bin to allow overriding system binaries
set PATH /usr/local/bin $PATH
# Add upgraded curl
set PATH /usr/local/opt/curl/bin $PATH

# Virtualfish
export VIRTUALFISH_HOME=$HOME/Envs
export PROJECT_HOME=$HOME/Code
export VIRTUALFISH_DEFUALT_PYTHON=python3

# Look into https://github.com/oh-my-fish/oh-my-fish

# Load rbenv and set up path
set PATH /Users/admin/.rbenv/shims $PATH
status --is-interactive; and . (rbenv init -|psub)

# Override fzf default command
export FZF_DEFAULT_COMMAND='rg --files'
