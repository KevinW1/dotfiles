#   -------------------------------
#   1.  ENVIRONMENT CONFIGURATION
#   -------------------------------

#   Change Prompt
#   ------------------------------------------------------------
    export PS1="\[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]\n\$ "

#   Set Paths
#   ------------------------------------------------------------
#    export PATH="$PATH:/usr/local/bin/"
#    export PATH="/usr/local/git/bin:/sw/bin/:/usr/local/bin:/usr/local/:/usr/local/sbin:/usr/local/mysql/bin:$PATH"


#   Set Default Editor (change 'Nano' to the editor of your choice)
#   ------------------------------------------------------------
#    export EDITOR=/usr/bin/nano

#   Set default blocksize for ls, df, du
#   from this: http://hints.macworld.com/comment.php?mode=view&cid=24491
#   ------------------------------------------------------------
#    export BLOCKSIZE=1k

#   Add color to terminal
#    export CLICOLOR=1

    bind '"\e[A": history-search-backward'
    bind '"\e[B": history-search-forward'

#   -----------------------------
#   2.  MAKE TERMINAL BETTER
#   -----------------------------

alias cp='cp -iv'                           # Preferred 'cp' implementation
alias mv='mv -iv'                           # Preferred 'mv' implementation
alias mkdir='mkdir -pv'                     # Preferred 'mkdir' implementation
alias ll='ls -FGlAhp'                       # Preferred 'ls' implementation
alias ltr="ls -ltr"			    # lon list by reverse date modified
alias less='less -FSRXc'                    # Preferred 'less' implementation
cdl() { builtin cd "$@"; ll; }              # Always list directory contents upon 'cdl'
alias cd..='cd ../'                         # Go back 1 directory level (for fast typers)
alias b='cd ../'                           # Go back 1 directory level
alias b.2='cd ../../'                       # Go back 2 directory levels
alias b.3='cd ../../../'                     # Go back 3 directory levels
alias b.4='cd ../../../../'                  # Go back 4 directory levels
alias b.5='cd ../../../../../'               # Go back 5 directory levels
alias b.6='cd ../../../../../../'            # Go back 6 directory levels
alias ~="cd ~"                              # ~:            Go Home
alias cl='clear'                             # c:            Clear terminal display
alias which='type -all'                     # which:        Find executables
alias path='echo -e ${PATH//:/\\n}'         # path:         Echo all executable Paths
alias show_options='shopt'                  # Show_options: display bash options settings
alias fix_stty='stty sane'                  # fix_stty:     Restore terminal settings when screwed up
alias cic='set completion-ignore-case On'   # cic:          Make tab-completion case-insensitive
mcd () { mkdir -p "$1" && cd "$1"; }        # mcd:          Makes new Dir and jumps inside
alias source_bash='source ~/.bash_profile'  # source_bash   Quickly source the .bash_profile file

alias rv="/c/Program\ Files/djv-1.1.0-Windows-64/bin/djv_view.exe"    # djv picture viewer

#   lr:  Full Recursive Directory Listing
#   ------------------------------------------
alias lr='ls -R | grep ":$" | sed -e '\''s/:$//'\'' -e '\''s/[^-][^\/]*\//--/g'\'' -e '\''s/^/   /'\'' -e '\''s/-/|/'\'' | less'

#   ---------------------------
#   6.  NETWORKING
#   ---------------------------

alias myip='curl ip.appspot.com'                    # myip:         Public facing IP Address

