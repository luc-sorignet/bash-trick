# .bashrc


BASH_DIR="$HOME/.bash"
USER_SCRIPT="$HOME/scripts"

if [ ! -d $BASH_DIR ]; then
	mkdir -p $BASH_DIR
fi

if [ -d $USER_SCRIPT ]; then
    export PATH="$PATH:$USER_SCRIPT"
else
	mkdir -p $USER_SCRIPT
	export PATH="$PATH:$USER_SCRIPT"
fi

# loading bash aliases if exist
if [ -f $BASH_DIR/bash_aliases ]; then
    . $BASH_DIR/bash_aliases
fi
# loading bash aliases if exist
if [ -f $BASH_DIR/bash_prompt ]; then
    . $BASH_DIR/bash_prompt
fi



