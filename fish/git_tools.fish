source /usr/local/share/fish/completions/git.fish

# Git shortcuts
alias gd="git diff --patience --ignore-space-change --minimal"
alias st="git status -s"
alias gdc="git diff -w --cached"
alias glc="git log --branches --not --remotes"
alias ci="git commit --no-edit"
alias untrkd="git status --short | grep '??' | cut -d ' ' -f 2 | xargs git add"
alias rmuntrkd="git status --short | grep '??' | cut -d ' ' -f 2 | xargs rm"
alias rb="git for-each-ref --count=10 --sort=-committerdate --format='%(committerdate:relative)|||%(refname:short)|||%(contents:subject)' refs/heads/ | column -s '|||' -t"
alias rmbr="git branch --merged | egrep -v \"(^\*|master)\" | xargs git branch -d"
# Add or commit all whitespace-only changed lines
alias gwa="git add -A; and git diff --cached -w | git apply --cached -R"
alias gwc="git add -A; and git diff --cached -w | git apply --cached -R; and git commit -m Whitespace"
alias gca="git commit --amend"
alias gs="git stash"
alias gsp="git stash pop"
alias gcp="git cherry-pick"
alias gap="git add -p"

# Common typos to ignore
alias gut="git"
alias gti="git"

# deploy a specific folder to the gh-pages branch
function ghdeploy -d "Push a specific directory to the gh-pages branch" -a dir
  git subtree push --prefix $dir origin gh-pages
end

# checkout a PR into a branch, and switch to branch
function copr -d "Checkout a pr, update dependencies. Takes the GH PR ID as an argument." -a id
  gh pr checkout $id; and bundle install; and yarn install
end

function mergebrstack -d "Merge a stack of downstream PRs"
  set -l last_branch ''
  for br in $argv
    if test -n $last_branch
      git switch $br
      git me $last_branch
      git push
    end
    set -l last_branch $br
  end
end
complete -c mergebrstack -a "(__fish_git_branches)"

function gcplast -d "Cherry pick the last commit onto target branch" -a branch
  set sha (lastsha)
  git switch $branch
  git cherry-pick -x $sha
  git push
  git switch -
end
complete -c gcplast -a "(__fish_git_branches)"

function lastsha -d "Return the short SHA for the HEAD commit"
  git log -1 --format="%h"
end
