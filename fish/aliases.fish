source ~/.config/fish/git_tools.fish

alias addalias="$EDITOR ~/.config/fish/aliases.fish; and source ~/.config/fish/aliases.fish"

# Tool aliases
alias pkill="pkill -f"
alias pgrep="pgrep -f"
alias ..="cd .."
alias ....="cd ../.."
alias prose="nvim -u ~/.vim/prose.vim -c 'Goyo'"
alias vim=nvim
alias ogvim=/usr/local/bin/vim
alias b="bundle"

# File manipulation
alias lowerfiles="ls | sed -n 's/.*/mv \"&\" \$(tr \"[A-Z]\" \"[a-z]\" <<< \"&\")/p' | bash"

# Temporary

# Create a new TMP graphic
function newgraphic -d "Create a new TMP Graphic in directory" -a dir
  git clone git@github.com:themarshallproject/gfx-v2.git $dir; cd $dir; sh ./setup.sh
end

function ll
  ls -lahF $argv
end

# Ruby specific things
alias be="bundle exec"
