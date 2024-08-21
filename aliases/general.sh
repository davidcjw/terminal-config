# macOS system related
alias turnonbt='blueutil --power 1'
alias turnoffbt='blueutil --power 0'
alias turnoffsleep='sudo pmset -a sleep 0; sudo pmset -a hibernatemode 0; sudo pmset -a disablesleep 1'
alias turnonsleep='sudo pmset -a sleep 1; sudo pmset -a hibernatemode 3; sudo pmset -a disablesleep 0'

# General
alias c="clear"

# Python
alias ipy="ipython --InteractiveShellApp.extensions=\"['autoreload']\" --InteractiveShellApp.exec_lines=\"['%autoreload 2']\""
alias jn="jupyter notebook"

# Vim
alias vi="nvim"

# Fuzzy finder
alias find="fzf --preview 'cat {}'"
