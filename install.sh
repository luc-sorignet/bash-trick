#!/bin/bash
export BASHTRICK_DIR="$HOME/.bash-trick"

source $BASHTRICK_DIR/bash-trick.sh

RCFILE=(".bashrc" ".zshrc")

VAR=$(cat <<- EOF
# BASHTRICK >>
    export BASHTRICK_DIR=\$HOME/.bash-trick
    source \$BASHTRICK_DIR/bash-trick.sh
    reload_cnf
    USR_BIN="\$HOME/bin"
    if [ -d \$USR_BIN ]; then
        export PATH="\$PATH:\$USR_BIN"
    fi
    export FPATH="\$BASHTRICK_DIR/functions:\$FPATH"
# << BASHTRICK
EOF
)

echo "setup bash-trick in .bashrc .zshrc files"
for F in "${RCFILE[@]}";
do
    FILE=$HOME/$F
    echo "$FILE?"
    if [ -f $FILE ]; then
        sed -i .bak "/# BASHTRICK >>/,/# << BASHTRICK/d" $FILE
        echo "$VAR" >> $FILE
        echo "setup in $FILE"
        rm $FILE.bak
        source $FILE
    fi
done
reload_cnf
