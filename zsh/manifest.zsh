alias rs='source ~/.zshrc'
alias gs='git status'
alias gd='git diff'
alias ge='bundle exec rspec spec'
alias gp='gacp'
alias gu='git push -u'
alias gl='git log --oneline --graph'
alias gc='git checkout'
alias gb='git branch'
alias gw='git switch'
alias zs='lsof -ti:3000'
alias zk='kill -9 '
alias zr='rubocop'


# git add commit push
gacp(){
  msg=${1:-wip}
  git add -A
  git commit -am "$msg"
  git push
  git status
}

# find and replace all - find / replace / file type (optional but doesn't seem to work when you do all files... ask chat gpt for help)
# this one is old. the chat gpt made a better one below
# fara() {
#   local wd=$(pwd)
#   if [ -z $3 ]; then
#     printf "You are about to find and replace all instances of \"$1\" with \"$2\" within $wd. Are you sure? [y/n]: "
#   else
#     printf "You are about to find and replace all instances of \"$1\" with \"$2\" within .$3 files in $wd. Are you sure? [y/n]: "
#   fi
#   read -r response
#   if [ $response = "y" ]; then
#     # if files have non-english characters, there will be an error message but the function still works
#     if [ -z $3 ]; then
#       find . -type f -name "*.*" | xargs sed -i '' "s/$1/$2/g"
#     else
#       find . -type f -name "*.$3" | xargs sed -i '' "s/$1/$2/g"
#     fi
#     echo "All instances of $1 have been replaced with $2"
#   else
#     echo "Find and replace aborted"
#   fi
# }
fara() {
  local search_string="$1"
  local replace_string="$2"
  local extension="$3"

  local warning_message="WARNING: This operation will replace all instances of '${search_string}' with '${replace_string}'"
  if [[ -n "$extension" ]]; then
    warning_message+=" in all '${extension}' files."
  else
    warning_message+=" in all files."
  fi

  echo "$warning_message"

  echo -n "Are you sure you want to proceed? (y/n) "
  read confirm

  if [[ "$confirm" == [Yy] ]]; then
    if [[ -n "$extension" ]]; then
      find . -type f -name "*.${extension}" -print0 | xargs -0 sed -i '' "s/${search_string}/${replace_string}/g"
    else
      find . -type f -print0 | xargs -0 sed -i '' "s/${search_string}/${replace_string}/g"
    fi
    echo "Find and replace operation completed."
  else
    echo "Find and replace operation canceled."
  fi
}
