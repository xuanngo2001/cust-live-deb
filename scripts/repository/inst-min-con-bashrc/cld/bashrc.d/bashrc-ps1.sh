
# Define what to display on the command line: e.g. --=[2015-05-26 14:00:32 @root]=--
# http://askubuntu.com/a/24422
red=$(tput setaf 1)
green=$(tput setaf 2)
white=$(tput setaf 7)
reset=$(tput sgr0)
bold=$(tput bold)
export PS1="\[$green\]-----=[$(date +%Y-%m-%d) \t @\[$red\]\u\[$green\]]=-----\[$reset\]\n\w>"
