# Vars

# Alias
alias cd="c"

# Settings
export ZSH=$HOME/Dotfiles/zsh/plugins/oh-my-zsh
export PLUGINS=$HOME/Dotfiles/zsh/plugins

#Funcoes

	# CD com ls
	c(){
		cd $1;
		ls;
	}

# Plugins

plugins=(
  git
  vi-mode
)

source $PLUGINS/oh-my-zsh/oh-my-zsh.sh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
stty -ixon
