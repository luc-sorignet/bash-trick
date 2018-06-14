function reload_cnf() {
if [ -d $BASHTRICK_DIR ]; then
if [ -d $BASHTRICK_DIR/aliases ]; then
for f in $BASHTRICK_DIR/aliases/*.alias ; do
# loading aliases if exist
if [ -f $f ]; then
. $f
fi
done
fi
if [ -d $BASHTRICK_DIR/functions ]; then
for f in $BASHTRICK_DIR/functions/*.function ; do
# loading function if exist
if [ -f $f ]; then
. $f
fi
done
fi
if [ -d $BASHTRICK_DIR/config ]; then
for f in $BASHTRICK_DIR/config/*.conf ; do
# loading conf if exist
if [ -f $f ]; then
. $f
fi
done
fi
fi
return 0
}
reload_cnf
