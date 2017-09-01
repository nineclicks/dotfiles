alias cl="clear;git branch;ls -l"
alias 'autobuild'='java -cp cljs.jar:lib/*:src clojure.main watch.clj'
alias www='sudo -u www-data'
alias android-studio='/opt/android-studio/bin/studio.sh'
alias avd='/home/nick/Android/Sdk/tools/android avd'
alias wifi='sudo systemctl restart network-manager.service'
alias clog='tail -f log/server.log'
alias xmod='xmodmap ~/.xmodmap'

function apa() {
  sudo rm /etc/apache2/sites-enabled/*
  sudo ln -s /etc/apache2/sites-available/$1 /etc/apache2/sites-enabled/
  sudo service apache2 restart
}

_apa()
{
  
  local cur=${COMP_WORDS[COMP_CWORD]}
  PROJECTS_DIR="/etc/apache2/sites-available/"
  LOOK_FOR="*"
  cd ${PROJECTS_DIR}
  PROJECTS=$(ls ${LOOK_FOR})
  COMPREPLY=( $(compgen -W "${PROJECTS}" -- $cur) )
}
complete -F _apa apa
