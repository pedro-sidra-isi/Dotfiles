export ZSH=$HOME/.oh-my-zsh
# Vars

# Alias

# Theme
ZSH_THEME="agnoster"

# Settings
export PLUGINS=$HOME/Dotfiles/zsh/plugins

PATH="$HOME/.local/bin:$PATH"


#Funcoes

# CD com ls
c(){
	cd $1;
	ls;
}
alias cd="c"


PYTHON_SKEL_PATH="$HOME/Code/utils/pythonSkeleton.py" 
pInit(){
    cp $PYTHON_SKEL_PATH ./$1;
}


# Ultimo diretorio apenas 
# (porra, usa pwd pra mostrar tudo, n precisa sempre)

# Plugins

plugins=(
git
vi-mode
)
source $ZSH/oh-my-zsh.sh

	prompt_dir() {
  prompt_segment blue black '%c'
}
source $PLUGINS/zsh-autosuggestions/zsh-autosuggestions.zsh
source $PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh


# Disable ctrl-s shortcut that freezes terminal
stty -ixon
