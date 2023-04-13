alias rs='source ~/.zshrc'
alias gs='git status'
alias gd='git diff'
alias gr='rubocop'
alias ge='bundle exec rspec spec'
alias gp='gacp'
alias gu='git push -u'
alias gl='git log --oneline --graph'
alias gc='git checkout'
alias gb='git branch'
alias gw='git switch'

# git add commit push
gacp(){
  msg=${1:-wip}
  git add -A
  git commit -am "$msg"
  git push
  git status
}

# find and replace all - find / replace / file type (optional)
fara() {
  local wd=$(pwd)
  if [ -z $3 ]; then
    printf "You are about to find and replace all instances of \"$1\" with \"$2\" within $wd. Are you sure? [y/n]: "
  else
    printf "You are about to find and replace all instances of \"$1\" with \"$2\" within .$3 files in $wd. Are you sure? [y/n]: "
  fi
  read -r response
  if [ $response = "y" ]; then
    # if files have non-english characters, there will be an error message but the function still works
    if [ -z $3 ]; then
      find . -type f -name "*.*" | xargs sed -i '' "s/$1/$2/g"
    else
      find . -type f -name "*.$3" | xargs sed -i '' "s/$1/$2/g"
    fi
    echo "All instances of $1 have been replaced with $2"
  else
    echo "Find and replace aborted"
  fi
}

