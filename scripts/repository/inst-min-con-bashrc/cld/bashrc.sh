# Source all *.sh in bashrc.d/
#   Code taken from /etc/profile
if [ -d /usr/local/cld/bashrc.d ]; then
  for i in /usr/local/cld/bashrc.d/*.sh; do
    if [ -r $i ]; then
      . $i
    fi
  done
  unset i
fi
