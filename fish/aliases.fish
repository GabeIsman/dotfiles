alias addalias="$EDITOR ~/.config/fish/aliases.fish; and source ~/.config/fish/aliases.fish"

# Tool aliases
alias pkill="pkill -f"
alias pgrep="pgrep -f"
alias ll="ls -lah"

# Git shortcuts
alias gd="git diff --patience -w"
alias st="git status -s"
alias gdc="git diff -w --cached"
alias glc="git log --branches --not --remotes"
alias ci="git commit --no-edit"
alias untrkd="git status --short | grep ^\?\? | cut -d \" \" -f 2 | xargs git add"
alias rmuntrkd="git status --short | grep ^\?\? | cut -d \" \" -f 2 | xargs rm"
alias rb="git for-each-ref --count=10 --sort=-committerdate --format='%(committerdate:relative)|||%(refname:short)|||%(contents:subject)' refs/heads/ | column -s '|||' -t"

# deploy a specific folder to the gh-pages branch
function ghdeploy -d "Push a specific directory to the gh-pages branch" -a dir
  git subtree push --prefix $dir origin gh-pages
end

# Common typos to ignore
alias gut="git"
