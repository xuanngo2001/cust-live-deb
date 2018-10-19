#!/bin/bash
set -e
# Description: Create CLD directory structure.
#   Note: from ../inst-min-con-cld-bin/cld/bin

action=$1

case "${action}" in
  doc)
      mkdir -p ./cld/doc
      ;;
      
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
  
  log)
      mkdir -p ./cld/log
      ;;
        
  where-used)
      script_repo_dir=$2
      if [ -z "${script_repo_dir}" ]; then echo 'Error: Need scripts repository path. Aborted!'; exit 1; fi
      script_repo_dir=$(readlink -ev "${script_repo_dir}")
      find "${script_repo_dir}"  | grep -F '/cld/' | sort | sed "s|${script_repo_dir}|   .|"
      
      echo '[where-used process completed!]'
      exit 1; # Exit early to bypass display of template below.
      ;;    
  *)
      echo "Error: Action: ${action} is unknown. Aborted!"
      printf "    %-15s %-43s [%s]\n" 'where-used'        '=> N/A'                                    'Show where paths below are used'
      printf "    %-15s %-43s [%s]\n" 'doc'               '=> ./cld/doc'                              'CLD documentation'
      printf "    %-15s %-43s [%s]\n" 'bin'               '=> ./cld/bin'                              'Put your executable here'
      printf "    %-15s %-43s [%s]\n" 'home'              '=> ./cld/home'                             '$HOME directory'
      printf "    %-15s %-43s [%s]\n" 'app'               '=> ./cld/app'                              'e.g. ./app/ant/bin/, ./app/ant/icon/'
      printf "    %-15s %-43s [%s]\n" 'jwmrc'             '=> ./cld/app/jwm/jwmrc'                    'JWM configuration files'
      printf "    %-15s %-43s [%s]\n" 'jwm-bootstrap'     '=> ./cld/app/jwm/bootstrap'                'Scripts executed after JWM started'
      printf "    %-15s %-43s [%s]\n" 'bashrc'            '=> ./cld/bashrc.d'                         '*.sh will be sourced'
      printf "    %-15s %-43s [%s]\n" 'after-boot'        '=> ./cld/systemd/runlevel/after-boot'      '*.sh will be executed after boot'
      printf "    %-15s %-43s [%s]\n" 'before-shutdown'   '=> ./cld/systemd/runlevel/before-shutdown' '*.sh will be executed before shutdown/reboot/restart'
      printf "    %-15s %-43s [%s]\n" 'log'               '=> ./cld/log'                              'All logs here.'
      exit 1;
      ;;
esac

# Display template.
echo '# Add to CLD/'
echo -e "\tyes | cp -av ./cld  /usr/local"

