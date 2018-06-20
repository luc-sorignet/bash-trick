#!/bin/bash
RCFILE=(".bashrc" ".zshrc")
VAR=$(cat <<'EOF'
        export BASHTRICK_DIR="$HOME/.bash-trick"
        source $BASHTRICK_DIR/bt.sh
        USR_BIN="$HOME/bin"
        if [ -d $USR_BIN ]; then
            export PATH="$PATH:$USR_BIN"
        fi
        export FPATH=$BASHTRICK_DIR/functions:$FPATH
EOF
)



for F in "${RCFILE[@]}";
do
    FILE=$HOME/$F
    echo "$FILE?"
    if [ -f $FILE ]; then
        if grep "$VAR" $FILE > /dev/null
        then
            echo "already install in $FILE"
        else
            echo "$VAR" >> $FILE
            echo "setup in $FILE"
        fi
    fi
done

source $HOME/.bash-trick/bt.sh
reload_cnf
