export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"


if [ "$(tty)" = "/dev/tty1" ]; then
	dbus-run-session sway
fi



# Path to your oh-my-zsh installation.
export ZSH="/home/koala/.oh-my-zsh"
export ZSH_CUSTOM="/home/koala/.zsh"
ZSH_THEME="robbyrussell"

# ZSH autosuggestions
ZSH_AUTOSUGGEST_STRATEGY=(history)

ENABLE_CORRECTION="true"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git colorize pip sudo  zsh-autosuggestions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

export LANG=en_US.UTF-8

if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='nvim'
fi

# Example aliases
alias ls='exa --icons --color=auto --group-directories-first'
alias cat='bat'
alias open='xdg-open'
alias vim='nvim'


source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/koala/.zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
