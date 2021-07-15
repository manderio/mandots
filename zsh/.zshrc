# compinit - automatic settings
zstyle ':completion:*' auto-description '`you seem to need some help with '\'' %d'
zstyle ':completion:*' completer _expand _complete _ignored _approximate
zstyle ':completion:*' format '`you seem to need help with %d'\'''
zstyle ':completion:*' group-name ''
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=**' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=** l:|=*' 'm:{[:lower:]}={[:upper:]} m:{[:lower:][:upper:]}={[:upper:][:lower:]} r:|[._-]=** r:|=** l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle :compinstall filename '~/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob nomatch
unsetopt beep notify
bindkey -v
# End of lines configured by zsh-newuser-install

# load plugin manager
source ~/.zsh/antigen.zsh

# auto correction
antigen bundle zsh-users/zsh-autosuggestions
antigen apply


# git prompt via vsc_info
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# prompt
PROMPT='%(?.%F{red}%n%F{white}@%F{green}%m.%F{magenta}%n%F{blue}@%F{red}%m %?) %F{white}%# '
RPROMPT=\$vcs_info_msg_0_'%f %B%F{white}%1~%f%b %F{blue}|%F{red} %*'

# path addition
export PATH="$HOME/.cargo/bin:$PATH" 

# sway 
case $(tty) in 
    /dev/tty*) sway;;
esac

# alias
# formatting aliases
alias ls='ls --color=auto'

# config edits
alias dots='cd ~/mandots'
alias conf='cd ~/.config && nvim'
alias ewwconf='cd ~/.config/eww/ && nvim'

# device connections
alias h4ztp='bluetoothctl power on && bluetoothctl connect 4C:87:5D:CB:76:4C'

# networking alias
alias show='cat'
alias con='sudo screen /dev/ttyUSB0'
alias traceroute='traceroute -I --resolve-hostnames'
alias en='sudo su'
alias ssh='ssh -v'

# misc alias
alias gay='mpv --speed=16.0 --loop=yes ~/stuff/gay.gif'

# pacman alias
alias pkginst='sudo pacman -S'
alias pkgupgr='sudo pacman -Syu'
alias pkgsrc='pacman -Fy'

# alias for ls
alias ll='ls -l'
alias la='ls -la'
