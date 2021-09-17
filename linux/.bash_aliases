#   kwhitfield linux bash profile


#   ENV variables
#   ------------------------------------------
export PS1='\[\033[01;32m\][\t] \u@\h\[\033[00m\]: \[\033[01;34m\]$PWD\[\033[00m\]\n\$ '
export EDITOR=subl


#   History search
#   ------------------------------------------
bind '"[A":history-search-backward'
bind '"[B":history-search-forward'


#   Aliases
#   ------------------------------------------
alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias lr='tree ./'                          # recursive directory list
alias lrp='tree -f ./'                      # recursive directory list with path
alias lsp='ls -tr -d $PWD/{*,.*}'           # List with full path
alias llp='ls -ltr -d $PWD/{*,.*}'          # Long list with full path
alias less='less -FSRXc'                    # Preferred 'less' implementation
cdl() { builtin cd "$@"; ll; }              # Always list directory contents upon 'cdl'
alias b='cd ../'                            # Go back 1 directory level
alias ~="cd ~"                              # Go Home
alias cl='clear'                            # Clear terminal display
alias cll='clear; ll'                       # Clear terminal and do a long list
alias which='type -all'                     # Find executables
alias path='echo -e ${PATH//:/\\n}'         # Echo all executable Paths
alias show_options='shopt'                  # Display bash options settings
alias fix_stty='stty sane'                  # Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # Make tab-completion case-insensitive
mcd() { mkdir -p "$1" && cd "$1"; }         # Makes new Dir and jumps inside
alias DT='tee ~/Desktop/terminalOut.txt'    # Pipe content to file on Desktop
alias source_bash='source ~/.bash_aliases'  # Quickly source the .bash_aliases file
alias edit_bash='subl ~/.bash_aliases'      # Edit the .bash_aliases file
alias qfind='find . -name'                  # Quickly search for file
zipf() { zip -r "$1".zip "$1"; }            # Create a ZIP archive of a folder
alias findpid='ps o user,pid,comm,args,pcpu,size,state -C bash -N -C xterm | grep'  # find pid of process by name
myps() { ps $@ -u $USER -o pid,%cpu,%mem,start,time,bsdtime,command ; } # List processes owned by current user
alias netCons='lsof -i'                     # Show all open TCP/IP sockets
alias lsock='ss -l'                         # Display open sockets
alias lsockU='ss -u -a'                     # Display only open UDP sockets
alias lsockT='ss -t -a'                     # Display only open TCP sockets
alias openPorts='ss -ltn'                   # All listening connections
alias myip='dig @resolver4.opendns.com myip.opendns.com +short' # External IPv4 address


#   Program shortcuts
#   ------------------------------------------
alias s='subl'  # Sublime
alias vs='code' # VS code


# Git
#   ------------------------------------------
alias gitfiles='git show --name-only --oneline HEAD'
alias gitstats='git show --stat --oneline HEAD'


#   Extract most know archives with one command
#   ---------------------------------------------------------
extract () {
    if [ -f $1 ] ; then
      case $1 in
        *.tar.bz2)   tar xjf $1     ;;
        *.tar.gz)    tar xzf $1     ;;
        *.bz2)       bunzip2 $1     ;;
        *.rar)       unrar e $1     ;;
        *.gz)        gunzip $1      ;;
        *.tar)       tar xf $1      ;;
        *.tbz2)      tar xjf $1     ;;
        *.tgz)       tar xzf $1     ;;
        *.zip)       unzip $1       ;;
        *.Z)         uncompress $1  ;;
        *.7z)        7z x $1        ;;
        *)     echo "'$1' cannot be extracted via extract()" ;;
         esac
     else
         echo "'$1' is not a valid file"
     fi
}

