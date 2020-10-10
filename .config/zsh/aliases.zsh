alias lslo="find . -name '*.orig' -o -name '*.rej'"
alias cleanup="find . \( -name '*.orig' -o -name '*.rej' \) -exec rm {} \;"
alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'
