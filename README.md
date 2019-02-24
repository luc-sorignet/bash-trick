
      ▀█████████▄     ▄████████    ▄████████    ▄█    █▄        ███        ▄████████  ▄█   ▄████████    ▄█   ▄█▄
        ███    ███   ███    ███   ███    ███   ███    ███   ▀█████████▄   ███    ███ ███  ███    ███   ███ ▄███▀
        ███    ███   ███    ███   ███    █▀    ███    ███      ▀███▀▀██   ███    ███ ███▌ ███    █▀    ███▐██▀
       ▄███▄▄▄██▀    ███    ███   ███         ▄███▄▄▄▄███▄▄     ███   ▀  ▄███▄▄▄▄██▀ ███▌ ███         ▄█████▀
      ▀▀███▀▀▀██▄  ▀███████████ ▀███████████ ▀▀███▀▀▀▀███▀      ███     ▀▀███▀▀▀▀▀   ███▌ ███        ▀▀█████▄
        ███    ██▄   ███    ███          ███   ███    ███       ███     ▀███████████ ███  ███    █▄    ███▐██▄
        ███    ███   ███    ███    ▄█    ███   ███    ███       ███       ███    ███ ███  ███    ███   ███ ▀███▄
      ▄█████████▀    ███    █▀   ▄████████▀    ███    █▀       ▄████▀     ███    ███ █▀   ████████▀    ███   ▀█▀
                                                                          ███    ███                   ▀

**Installation**

    git clone https://github.com/luc-sorignet/bash-trick.git ~/.bash-trick
    cd ~/.bash-trick
    ./install.sh
    cd ..

**Architecture**

- config/ the configuration dir with bash config file *.config
- aliases/ the aliase dir
- functions/ the bash-trick function dir with .functions (use the zsh autocomplete)

You can create your own function, alias, conf. Just add a .custom.function, .custom.alias or .custom.conf file in the correspondant dir.
and reload the conf with reload_cnf command.


**Bash alias**

- `l`: shortcut for ls command
- `la`: list all file in folder include hidden dir/file
- `ll`: list file with detail without hidden dir
- `dev`: go to the developpment folder (your custom workspace define by $DEV_DIR in .bashrc)
- `clrhist`: clear the bash history and command prompt
- `bashrc`: edit the bashrc file and reload it


**Qibuild Shortcut**

- `qib` : qibuild
- `qibc` : qibuild configure
- `qibm` : qibuild make
- `qibi` : qibuild install
- `qitc` : qitoolchain
- `qitcc` : qitoolchain create

**Squish Shortcut**

- `sqrun` : squishrunner
- `sqruntc` : squishrunner --testcase

## Custom Functions

`cdp` : cd project (default $DEV_DIR=~/Documents/dev)

you can redefine the dir with `export DEV_DIR=your/custom/dir` on **.bashrc** or **.zshrc** after the bash-trick install

`tp` : teleport on the registered waypoint

 exemple: `tp waypoint` or if you want to go on a subdir from waypoint `tp waypoint PATH_FROM_WAYPOINT/SUBDIR/SUBSUBDIR`