#!/bin/bash
set -e
# Description: Create CLD directory structure

action=$1

case "${action}" in
  bin)
      mkdir -p ./cld/bin
      ;;
      
  jwmrc)
      mkdir -p ./cld/app/jwm/jwmrc
      ;;
      
  bashrc)
      mkdir -p ./cld/bashrc.d
      ;;

  bootstrap)
      mkdir -p ./cld/bootstrap
      ;;

   *)
      echo "Error: Action: ${action} is unknown. Aborted!"
      exit 1;
      ;;
esac

echo 'yes | cp -av ./cld  /usr/local'