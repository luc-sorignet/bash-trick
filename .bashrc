BASH_DIR="~/.bash"
USER_SCRIPT="~/.scripts"

if [ ! -e $BASH_DIR ]; then
	mkdir -p $BASH_DIR
fi

if [ -d -e $USER_SCRIPT ]; then
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
