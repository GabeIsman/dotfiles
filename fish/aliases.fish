alias addalias="$EDITOR ~/.config/fish/aliases.fish; and source ~/.config/fish/aliases.fish"

# Tool aliases
alias pkill="pkill -f"
alias pgrep="pgrep -f"
alias ll="ls -lAhF"
alias ..="cd .."
alias ....="cd ../.."

# File manipulation
alias lowerfiles="ls | sed -n 's/.*/mv \"&\" \$(tr \"[A-Z]\" \"[a-z]\" <<< \"&\")/p' | bash"

# Git shortcuts
alias gd="git diff --patience --ignore-space-change --minimal"
alias st="git status -s"
alias gdc="git diff -w --cached"
alias glc="git log --branches --not --remotes"
alias ci="git commit --no-edit"
alias untrkd="git status --short | grep '??' | cut -d ' ' -f 2 | xargs git add"
alias rmuntrkd="git status --short | grep '??' | cut -d ' ' -f 2 | xargs rm"
alias rb="git for-each-ref --count=30 --sort=-committerdate --format='%(committerdate:relative)|||%(refname:short)|||%(contents:subject)' refs/heads/ | column -s '|||' -t"
alias rmbr="git branch --merged | egrep -v \"(^\*|master)\" | xargs git branch -d"
# Add or commit all whitespace-only changed lines
alias gwa="git add -A; and git diff --cached -w | git apply --cached -R"
alias gwc="git add -A; and git diff --cached -w | git apply --cached -R; and git commit -m Whitespace"
alias gca="git commit --amend"
alias gs="git stash"
alias gsp="git stash pop"
alias gcp="git cherry-pick"
alias gap="git add -p"

# Create a new TMP graphic
function newgraphic -d "Create a new TMP Graphic in directory" -a dir
  git clone git@github.com:themarshallproject/gfx-v2.git $dir; cd $dir; sh ./setup.sh
end

# deploy a specific folder to the gh-pages branch
function ghdeploy -d "Push a specific directory to the gh-pages branch" -a dir
  git subtree push --prefix $dir origin gh-pages
end

# checkout a PR into a branch, and switch to branch
function copr -d "Checkout a PR into a branch. Takes the GH PR ID as an argument." -a id
  git fetch origin pull/$id/head:pull-$id
  git co pull-$id
end

# Common typos to ignore
alias gut="git"

# Ruby specific things
alias be="bundle exec"
