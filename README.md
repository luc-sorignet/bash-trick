# BASH TRICKS :lemon: 
**Installation**
`git clone https://github.com/luc-sorignet/bash-trick.git ~/.bash-trick; cd ~/.bash-trick ; ./install.sh ; cd ..`

**Bash Navigation**

`ctrl + a`: Go to the begin of the prompt

`ctrl + e`: Go to the end of the prompt

`ctrl + ->`: Move to the end of the next word

`ctrl + <-`: Move to the beginning of the previous word

**Bash History**

 &uarr; : previous command in history

 &darr; : next command  in history

`ctrl + r`: search in history

**Bash alias**

- `l`: shortcut for ls command
- `la`: list all file in folder include hidden dir/file
- `ll`: list file with detail without hidden dir
- `dev`: go to the developpment folder (your custom workspace define by $DEV_DIR in .bashrc)
- `clrhist`: clear the bash history and command prompt
- `bashrc`: edit the bashrc file and reload it



## Qibuild Shortcut

`qib` : qibuild
`qibc` : qibuild configure
`qibm` : qibuild make
`qibi` : qibuild install
`qitc` : qitoolchain
`qitcc` : qitoolchain create



## Squish Shortcut

`sqrun` : squishrunner
`sqruntc` : squishrunner --testcase

## Custom Functions
`cdp` : cd Project (default $DEV_DIR=~/Documents/dev) you can redefine the dir with export DEV_DIR=your/custom/dir on .bashrc or .zshrc after the bash-trick install
`tp` : teleport on the registered waypoint exemple: `tp waypoint` or if you want to go on a subdir from waypoint `tp waypoint PATH_FROM_WAYPOINT/SUBDIR/SUBSUBDIR`