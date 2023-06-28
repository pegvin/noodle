# For Git GPG Commit Signing
export GPG_TTY=$(tty)

# Path
export PATH=~/.local/bin:$PATH

# Enable colors and change prompt:
autoload -U colors && colors
PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "

# Lines configured by zsh-newuser-install
HISTFILE=~/.cache/zsh/.histfile
HISTSIZE=10000
SAVEHIST=10000

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

# Use vim keys in tab complete menu
# (warning, you won't be able to type in menu mode)
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'k' vi-up-line-or-history
bindkey -M menuselect 'l' vi-forward-char
bindkey -M menuselect 'j' vi-down-line-or-history

# Move Cursor At The End When Selected The Desired Command
autoload -U history-search-end
zle -N history-beginning-search-backward-end history-search-end
zle -N history-beginning-search-forward-end history-search-end
bindkey "^[[A" history-beginning-search-backward-end
bindkey "^[[B" history-beginning-search-forward-end

source $ZDOTDIR/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh 2>/dev/null
source $ZDOTDIR/zsh-history-substring-search/zsh-history-substring-search.zsh 2>/dev/null
export HISTORY_SUBSTRING_SEARCH_HIGHLIGHT_FOUND="none"

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

source $ZDOTDIR/key-binds.zsh
