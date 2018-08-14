# Vars

# Alias

# Settings
export ZSH=$HOME/Dotfiles/zsh/plugins/oh-my-zsh
export PLUGINS=$HOME/Dotfiles/zsh/plugins

#Funcoes

	# CD com ls
	c(){
		cd $1;
		ls;
	}
	alias cd="c"

# Plugins

plugins=(
  git
)

source $PLUGINS/oh-my-zsh/oh-my-zsh.sh
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
stty -ixon
