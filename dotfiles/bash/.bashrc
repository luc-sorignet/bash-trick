# .bashrc

#terminal color you can create your own : http://bashrcgenerator.com/
export PS1="\[$(tput bold)\]\[\033[38;5;11m\]\u@\h\[$(tput sgr0)\]\[$(tput sgr0)\]\[\033[38;5;15m\]:[\[$(tput sgr0)\]\[\033[38;5;10m\]\w\[$(tput sgr0)\]\[\033[38;5;15m\]]\[$(tput sgr0)\]\[\033[38;5;248m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\]>\[$(tput sgr0)\]"

export BASH_DIR="$HOME/.shell-conf"
export USR_BIN="$HOME/bin"

function reload_cnf() {

    if [ -d $BASH_DIR ]; then
        if [ -d $BASH_DIR/aliases ]; then
             for f in $BASH_DIR/aliases/*.alias ; do
                 # loading aliases if exist
                 if [ -f $f ]; then
                    . $f
                 fi
             done
        fi
        if [ -d $BASH_DIR/functions ]; then
            for f in $BASH_DIR/functions/*.function ; do
                # loading function if exist
                if [ -f $f ]; then
                    . $f
                fi
            done
        fi
         if [ -d $BASH_DIR/config ]; then
            for f in $BASH_DIR/config/*.conf ; do
                # loading conf if exist
                if [ -f $f ]; then
                   . $f
                fi
            done
        fi

    fi
}

reload_cnf

if [ -d $USR_BIN ]; then
    export PATH="$PATH:$USR_BIN"
fi


