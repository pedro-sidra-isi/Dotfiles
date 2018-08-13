# Vars

# Alias

# Settings


#Funcoes

	# CD com ls
	c(){
		cd $1;
		ls;
	}
	alias cd="c"

# Plugins
source ~/Dotfiles/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/Dotfiles/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
stty -ixon
