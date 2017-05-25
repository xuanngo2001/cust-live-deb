
# LS: Some shortcuts for different directory listings
alias ls='ls -hFA --color=tty'                  # classify files in colour
alias dir='ls -A --color=auto --format=vertical'
alias vdir='ls -A --color=auto --format=long'
alias ll='ls -lA'                               # long list
alias la='ls -A'                                # all but . and ..
alias l='ls -CFA'                               # by column, suffix file-type indicator: */=>@| 
alias ldir='ls -d */'                           # List only directories
alias lss='ls -shCFA'                           # List with human readable size.

# DF: Default to human readable figures
alias df='df -h'
alias du='du -ch'
alias du1='du --max-depth=1'
 
# Some more alias to avoid making mistakes:
alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'

# Shutdown
alias fk='pkill --oldest chrome && poweroff'


# grep color
alias grep='grep --color'

# grep case insensitive
alias igrep='grep -i'