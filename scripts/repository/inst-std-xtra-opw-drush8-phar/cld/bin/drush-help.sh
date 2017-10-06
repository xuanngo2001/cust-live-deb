#!/bin/bash
set -e
# Description: List helpful commands
#   Highlight comment: ./mpv-help.sh | grep -E '^|#.*'

cat << EndOfHelp
  # Disable email notification.
  drush site-install standard install_configure_form.enable_update_status_emails=NULL
  
EndOfHelp