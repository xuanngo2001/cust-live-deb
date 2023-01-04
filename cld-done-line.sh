# From ..cld-bashrc/

# Define what to display on the command line: e.g. --=[2015-05-26 14:00:32 @root]=--
# http://askubuntu.com/a/24422
red=$(tput setaf 1)
green=$(tput setaf 2)
white=$(tput setaf 7)
reset=$(tput sgr0)
bold=$(tput bold)
blink=$(tput blink)
echo -e "  $(date +"%Y-%m-%d.%0k.%M.%S") $blink  $bold $green-----=[$red DONE DONE DONE DONE DONE DONE  DONE DONE DONE DONE DONE DONE $green]=-----$reset"
echo -e "  $(date +"%Y-%m-%d.%0k.%M.%S") $blink  $bold $green-----=[$red DONE DONE DONE DONE DONE DONE  DONE DONE DONE DONE DONE DONE $green]=-----$reset"
echo -e "  $(date +"%Y-%m-%d.%0k.%M.%S") $blink  $bold $green-----=[$red DONE DONE DONE DONE DONE DONE  DONE DONE DONE DONE DONE DONE $green]=-----$reset"
