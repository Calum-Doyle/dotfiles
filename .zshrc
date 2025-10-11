# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# set caching for history
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# import color scheme
eval $(dircolors ~/.dircolors)

# load fuzzyfinder
source <(fzf --zsh)		# enables fuzzy history

# completion options
zstyle ":completion:*" menu_select
zstyle ":completion:*" special-dirs true
zstyle ":completion:*" list-colors ${(s.:.)LS_COLORS} ma=0\;33

# vi mode
bindkey -v

# Set aliases
alias ls='lsd --group-directories-first --color=auto'
alias grep='grep --color=auto'
alias vim='nvim'
alias vi='nvim'
alias lsblk='lsblk | bat -l conf -p'
alias df='df -h | bat -l conf -p'


# Shortcuts
alias s='sudo'			# S for Sudo
alias v='nvim'			# V for nVim
alias r='source ~/.zshrc'	# R for Reload
alias f='yazi'			# F for File manager
alias h='cd ~'			# H for Home

# Key bindings
bindkey "^a" beginning-of-line
bindkey "^e" end-of-line
bindkey "^g" kill-line
bindkey "^h" backward-word
bindkey "^b" backward-kill-word
bindkey "^w" forward-word
bindkey "^j" history-search-forward
bindkey "^k" history-search-backward
bindkey "^f" fzf-history-widget
bindkey "^[[3~" delete-char

# auto-completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit



# set path
export PATH="$HOME/.local/bin:$PATH"
export EDITOR=nvim

# Startup
clear
fastfetch -l ~/.config/fastfetch/logo.png
echo && echo 

# set shell prompt
PS1=' %F{cyan}%~ %(?.%F{green}.%F{red})>%f '

# enable syntax highlighting
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 2>/dev/null
