export ZSH=$HOME/.oh-my-zsh
# Vars

# Alias

# Theme
ZSH_THEME="agnoster"

PATH="$HOME/.local/bin:$PATH"


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

# Plugins

plugins=(
	git
	vi-mode
	zsh-autosuggestions
	zsh-syntax-highlighting
)
source $ZSH/oh-my-zsh.sh

	prompt_dir() {
  prompt_segment blue black '%c'
}

# Disable ctrl-s shortcut that freezes terminal
stty -ixon

# Open tmux on startup
if [ "$TMUX" = "" ]; then tmux; fi
