# BASH TRICKS :lemon: 

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



## Git Alias

undo : git reset --soft HEAD^
amend : commit --amend
changes : diff --name-status
dic : diff --cached
diffstat : diff --stat

oneline : log --pretty=oneline --abbrev-commit --graph --decorate

checkb : checkout -b