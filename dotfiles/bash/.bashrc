# .bashrc

#terminal color you can create your own : http://bashrcgenerator.com/
export PS1="\[$(tput bold)\]\[\033[38;5;11m\]\u@\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]:[\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;248m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]>\[$(tput sgr0)\]"

export BASHTRICK_DIR="$HOME/.bash-trick"
source $BASHTRICK_DIR/bt.sh

USR_BIN="$HOME/bin"
if [ -d $USR_BIN ]; then
    export PATH="$PATH:$USR_BIN"
fi


