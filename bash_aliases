alias cll='clear;ls -la'
alias we='clear;curl wttr.in'

function cl() {
  clear
  git branch
  RESULT=$?
  if [ "$RESULT" != 0 ]; then
    clear
  fi
  ls -l
}

function gitconfig() {
  read -p 'Name:  ' username
  read -p 'Email: ' useremail
  git config --global user.email $useremail
  git config --global user.name $username
}
