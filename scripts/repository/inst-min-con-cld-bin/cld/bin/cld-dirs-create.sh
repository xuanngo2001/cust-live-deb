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
  
  where-used)
      script_repo_dir=$2
      if [ -z "${script_repo_dir}" ]; then echo 'Error: Need scripts repository path. Aborted!'; exit 1; fi
      script_repo_dir=$(readlink -ev "${script_repo_dir}")
      find "${script_repo_dir}"  | grep -F '/cld/' | sed "s|${script_repo_dir}|   .|"
      
      ;;    
  *)
      echo "Error: Action: ${action} is unknown. Aborted!"
      printf "    %-15s %-40s %s\n" 'bin'               '=> ./cld/bin'                             '[All your executable scripts here]'
      printf "    %-15s %-40s %s\n" 'home'              '=> ./cld/home'
      printf "    %-15s %-40s %s\n" 'app'               '=> ./cld/app'
      printf "    %-15s %-40s %s\n" 'jwmrc'             '=> ./cld/app/jwm/jwmrc'
      printf "    %-15s %-40s %s\n" 'jwm-bootstrap'     '=> ./cld/app/jwm/bootstrap'
      printf "    %-15s %-40s %s\n" 'bashrc'            '=> ./cld/bashrc.d'                        '[All *.sh will be exported]'
      printf "    %-15s %-40s %s\n" 'after-boot'        '=> ./cld/systemd/runlevel/after-boot'
      printf "    %-15s %-40s %s\n" 'before-shutdown'   '=> ./cld/systemd/runlevel/before-shutdown'
      exit 1;
      ;;
esac

# Display template.
echo '# Add to CLD/'
echo ' yes | cp -av ./cld  /usr/local'