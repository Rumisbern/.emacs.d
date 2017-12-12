# create emacs env file
echo $PATH | sed -e 's/^\(.*\)$/(setenv "PATH" "\1")/g' > ~/.emacs.d/shellenv.el
alias | sed -e "s/^alias \(.*\)='\(.*\)'$/    '(\"\1\" \"\2\")/g" |\
    echo -e "(setq alias-list\n  (list\n`cat`))" >> ~/.emacs.d/shellenv.el
