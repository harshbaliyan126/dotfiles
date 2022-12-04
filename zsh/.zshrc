# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$HOME/scripts/:$HOME/.local/bin:$PATH

# Prompt
source $ZSH_PLUGIN/zsh-git-prompt/zshrc.sh
autoload -U colors && colors	# Load colors
PROMPT='%B%F{cyan}%~%f $(git_super_status) %F{yellow}>>%f %b'

# Plugins
source $ZSH_PLUGIN/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH_PLUGIN/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
source $ZSH_PLUGIN/zsh-vim-mode/zsh-vim-mode.plugin.zsh

# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# vi mode
bindkey -v
export KEYTIMEOUT=1

VIM_MODE_VICMD_KEY='caps'

# Use vim keys in tab complete menu:
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history
bindkey -v '^?' backward-delete-char

# Change cursor shape for different vi modes.
function zle-keymap-select {
  if [[ ${KEYMAP} == vicmd ]] ||
     [[ $1 = 'block' ]]; then
    echo -ne '\e[1 q'
  elif [[ ${KEYMAP} == main ]] ||
       [[ ${KEYMAP} == viins ]] ||
       [[ ${KEYMAP} = '' ]] ||
       [[ $1 = 'beam' ]]; then
    echo -ne '\e[5 q'
  fi
}
zle -N zle-keymap-select
zle-line-init() {
    zle -K viins # initiate `vi insert` as keymap (can be removed if `bindkey -V` has been set elsewhere)
    echo -ne "\e[5 q"
}
zle -N zle-line-init
echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# Use lf to switch directories and bind it to ctrl-o
lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^o' 'lfcd\n'

# Edit line in vim with ctrl-e:
autoload edit-command-line; zle -N edit-command-line
bindkey '^e' edit-command-line

# aliases

alias l="exa -lh --icons"
alias weather="curl wttr.in"
alias shutdown="shutdown -h now"
alias grep="grep --color"
alias xclip="xclip -sel clip"

source /home/floppy04/.config/broot/launcher/bash/br
