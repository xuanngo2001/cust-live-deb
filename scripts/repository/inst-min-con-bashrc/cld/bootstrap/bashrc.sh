# Source all *.sh in bashrc.d/
#   Code taken from /etc/profile
if [ -d /usr/local/cld/bashrc.d ]; then
  for i in /usr/local/cld/bashrc.d/*.sh; do
    if [ -r $i ]; then
      echo ". $i" >> /root/.bashrc
    fi
  done
  unset i
fi
