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
bindkey -e
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
PROMPT='%(?.%F{red}%n%F{white}@%F{cyan}%m.%F{magenta}%n%F{blue}@%F{red}%m %?) %F{white}%# '
RPROMPT=\$vcs_info_msg_0_'%f %B%F{white}%1~%f%b %F{blue}|%F{red} %*'

# path addition
export PATH="$HOME/.cargo/bin:$PATH" 

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# sway 
case $(tty) in 
    /dev/tty*) sway;;
esac

# import alias
. ~/.zsh/zsh_aliases
