source /etc/bash_completion.d/git

function prompt
{
    STATUS="$?"
    RED='\[\e[0;31m\]'
    BRED='\[\e[1;31m\]'
    GREEN='\[\e[1;32m\]'
    YELLOW='\[\e[1;33m\]'
    BLUE='\[\e[1;34m\]'
    OFF='\[\e[m\]'

    PROMPT="\[\e]0;\W\a\]${GREEN}\u${OFF} ${BLUE}\w${OFF}${RED}$(__git_ps1 " (%s)")${OFF}"

    if [ "${STATUS}" -eq 0 ]
    then
        PS1="${PROMPT} ${BLUE}$ ${OFF}"
    else
        PS1="${PROMPT} ${BRED}$ ${OFF}"
    fi
}

PROMPT_COMMAND=prompt

alias ns='notify-send'
alias sl='ls'
alias l='ls'
alias s='ls'
alias ll='ls -l'
alias la='ls -a'
alias g='grep -HIrn'
alias gi='grep -HIrni'
alias agc='ack-grep --cpp'
alias agm='ack-grep --cmake'
alias 2.='cd ../../'
alias 3.='cd ../../../'
alias 4.='cd ../../../../'
alias 5.='cd ../../../../../'
alias 6.='cd ../../../../../../'
alias 7.='cd ../../../../../../../'

