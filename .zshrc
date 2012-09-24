# Aliases
alias ll='ls -l'
alias la='ls -la'
alias serve='~/work/Customization/lh_cms_user/bin/development/serve.sh'
alias psu='ps -u vikfor -f'
alias path="echo $PATH | sed 's/:/\n/g'"
alias pythonpath="echo $PYTHONPATH | sed 's/:/\n/g'"
alias v='vim'

# Directory shortcuts
lh_user=/nfs/vm/lhcms_hm/users/vikfor/work/Customization/lh_cms_user
my_user=~/work/Customization/lh_cms_user

autoload -U zutil
autoload -U compinit
autoload -U complist
autoload -U promptinit
promptinit
prompt walters
compinit -i

# Following is a good guide for setting up zsh:
# http://zsh.sourceforge.net/Guide/zshguide02.html
 
# Uncomment this line if you want jobs in background to contiue processing when exiting shell. One can also run the command 'disown' on the job to let the shell forget about the job (or start it with &| or &! at the end of the line) 
#setopt NO_HUP

# Uncomment following line to AUTO_CD if command is a directory
setopt AUTO_CD
setopt NO_BEEP
setopt EXTENDED_GLOB
# Allows commands like 'echo foo > file1 > file2'
setopt MULTIOS
setopt CORRECT

# Set colors
autoload colors; colors;
export LSCOLORS="Gxfxcxdxbxegedabagacad"
if [ "$DISABLE_LS_COLORS" != "true" ]
then
  # Find the option for using colors in ls, depending on the version: Linux or BSD
  ls --color -d . &>/dev/null 2>&1 && alias ls='ls --color=tty' || alias ls='ls -G'
fi

# One history for all open shells; store 10 000 entries. Use ^R and Alt-P
HISTFILE=~/.zhistory
HISTSIZE=SAVEHIST=10000
setopt incappendhistory
setopt sharehistory
setopt extendedhistory

# Useful to remember command in history without executing them
setopt interactivecomments

