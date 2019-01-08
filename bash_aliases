alias cll='clear;ls -la'
alias 'autobuild'='java -cp cljs.jar:lib/*:src clojure.main watch.clj'
alias www='sudo -u www-data'
alias android-studio='/opt/android-studio/bin/studio.sh'
alias avd='/home/nick/Android/Sdk/tools/android avd'
alias wifi='sudo systemctl restart network-manager.service'
alias clog='tail -f log/server.log'
alias xmod='xmodmap ~/.xmodmap'
alias cvatdb='mysql -uroot -e "drop database if exists l43qdmlx_orders;"&&mysql -uroot -e "create database l43qdmlx_orders;"&&echo "ok :)"'
alias cvatpsql='psql -U postgres -c "SELECT pg_terminate_backend(pg_stat_activity.pid) FROM pg_stat_activity WHERE pg_stat_activity.datname = '"'"'cvat'"'"' AND pid <> pg_backend_pid();" && psql -U postgres -c "drop database if exists cvat;"&&psql -U postgres -c "create database cvat;"&&echo "ok =)"'
alias restartadb='sudo adb kill-server&&sudo adb start-server&&echo "ok :)"'
alias we='clear;curl wttr.in'
alias macapa='sudo vi /etc/apache2/httpd.conf && sudo apachectl restart'
alias gitconfig='git config --global user.email "nicholasg1989@gmail.com" && git config --global user.name "Nick"'

function cl() {
  clear
  git branch
  RESULT=$?
  if [ "$RESULT" != 0 ]; then
    clear
  fi
  ls -l
}

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

function rpi() {
  umount $(df -h | grep -Po "(.*mmcblk0.*?) " | tr '\n' ' ')
  sudo dd bs=4M if=$1 of=/dev/mmcblk0 status=progress conv=fsync
}
