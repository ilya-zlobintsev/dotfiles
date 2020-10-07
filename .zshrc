HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt extendedglob
unsetopt beep notify
bindkey -v

zstyle :compinstall filename '/home/ilya/.zshrc'
zstyle ':completion:*' menu select
zstyle ':completion::complete:*' gain-privileges 1
zstyle ':completion:*' rehash true
setopt COMPLETE_ALIASES

autoload -Uz compinit promptinit
compinit
promptinit

bindkey "^A"	    beginning-of-line
bindkey "^[[H"      beginning-of-line
bindkey "^[[1~"	    beginning-of-line
bindkey "^[[4~"       end-of-line
bindkey "^E" 	    end-of-line

bindkey "^[[P"    delete-char
bindkey "^[[3~"   delete-char

bindkey "^[[1;5D"   backward-word
bindkey "^[[1;5C"   forward-word

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

bindkey '\e[A' up-line-or-beginning-search
bindkey '\e[B' down-line-or-beginning-search


[[ -n "${key[Up]}"   ]] && bindkey -- "${key[Up]}"   up-line-or-beginning-search
[[ -n "${key[Down]}" ]] && bindkey -- "${key[Down]}" down-line-or-beginning-search

#prompt walters
#prompt spaceship
if [ $USER = ilya ]; then
    PROMPT='%F{green}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
else
    PROMPT='%F{red}%n%f@%F{magenta}%m%f %F{blue}%B%~%b%f %# '
fi

#SPACESHIP_PROMPT_SEPARATE_LINE=false
#SPACESHIP_PROMPT_ADD_NEWLINE=false

alias ls="ls --color "
alias la="ls -lha --color"
alias ipp="curl ipinfo.io/ip"
alias df='df -h'
alias du='du -ch'

alias cp="cp --reflink=auto"
alias tmpdir='cd $(mktemp -d)'
alias termbin="nc termbin.com 9999"
alias dotfiles="/usr/bin/git --git-dir=/home/ilya/.config/dotfiles/ --work-tree=/home/ilya"

export EDITOR=nvim

function aur-add {
    ssh vps sudo -u repo aur sync -c -n --noview $@
    sudo pacman -Syu $@
}

if [[ -z $DISPLAY ]] && [[ $(tty) = /dev/tty1 ]]; then sway -d 2> ~/.cache/sway.log; fi

# If not running interactively, do not do anything
#[[ $- != *i* ]] && return
#[[ -z "$TMUX" ]] && exec tmux

