#!/bin/bash
set -e
# Description: Create CLD directory structure

action=$1

case "${action}" in
  bin)
      mkdir -p ./cld/bin
      ;;

  home)
      mkdir -p ./cld/home
      ;;

  app)
      mkdir -p ./cld/app
      ;;

  jwmrc)
      mkdir -p ./cld/app/jwm/jwmrc
      ;;

  jwm-bootstrap)
      mkdir -p ./cld/app/jwm/bootstrap
      ;;
                  
  bashrc)
      mkdir -p ./cld/bashrc.d
      ;;

  after-boot)
      mkdir -p ./cld/systemd/runlevel/after-boot
      ;;
      
  before-shutdown)
      mkdir -p ./cld/systemd/runlevel/before-shutdown
      ;;
      
   *)
      echo "Error: Action: ${action} is unknown. Aborted!"
      printf "    %-20s %s\n" "bin"               "=> ./cld/bin"
      printf "    %-20s %s\n" "home"              "=> ./cld/home"
      printf "    %-20s %s\n" "app"               "=> ./cld/app"
      printf "    %-20s %s\n" "jwmrc"             "=> ./cld/app/jwm/jwmrc"
      printf "    %-20s %s\n" "jwm-bootstrap"     "=> ./cld/app/jwm/bootstrap"
      printf "    %-20s %s\n" "bashrc"            "=> ./cld/bashrc.d"
      printf "    %-20s %s\n" "after-boot"        "=> ./cld/systemd/runlevel/after-boot"
      printf "    %-20s %s\n" "before-shutdown"   "=> ./cld/systemd/runlevel/before-shutdown"
            exit 1;
      ;;
esac

# Display template.
echo '# Add to CLD/'
echo ' yes | cp -av ./cld  /usr/local'