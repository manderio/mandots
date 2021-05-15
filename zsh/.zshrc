# compinit - automatic settings
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'l:|=* r:|=*' 'r:|[._-]=* r:|=*'
zstyle ':completion:*' menu select=1
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl true
zstyle :compinstall filename '/home/mander/.zshrc'

autoload -Uz compinit
compinit

# git prompt via vsc_info
autoload -Uz vcs_info
precmd_vcs_info() { vcs_info }
precmd_functions+=( precmd_vcs_info )
setopt prompt_subst
zstyle ':vcs_info:git:*' formats '%F{magenta}(%b)%r%f'
zstyle ':vcs_info:*' enable git

# prompt
PROMPT='%(?.%F{175}%n%F{223}@%F{cyan}%m.%F{magenta}%n%F{grey}@%F{166}%m %?) %F{223}%# '
RPROMPT=\$vcs_info_msg_0_'%f %B%F{yellow}%1~%f%b %F{223}|%F{223} %*'

# path addition
export PATH="$HOME/.cargo/bin:$PATH" 

# tbsm
case $(tty) in 
    /dev/tty*) tbsm run 1;;
esac

# alias
alias dots='cd ~/dotfiles'
alias ewwconf='cd ~/.config/eww/ && nvim'
alias h4ztp='bluetoothctl power on && bluetoothctl connect 4C:87:5D:CB:76:4C'
alias run-help=man
alias which-command=whence

