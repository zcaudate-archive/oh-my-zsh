# Push and pop directories on directory stack
alias pu='pushd'
alias po='popd'

# Show directory stack
alias d="dirs -v -l"

# Super user
alias _='sudo'

#alias g='grep -in'

# Show history
alias history='fc -l 1'

# List direcory contents
alias l='ls -la'
alias ll='ls -lah'

alias afind='ack-grep -il'

# Bash Utilities
alias edit="$VISUAL"
alias preview="$PREVIEW"
alias e="edit"
alias reload="source $CONFIG_HOME/dot.zshrc"     
alias ee="edit $CONFIG_HOME/dot.zshrc && reload"
alias ec="edit $CONFIG_HOME"
alias ez="edit $ZSH_FUNC_HOME"
alias w="which"
alias wi="whereis"
alias p="print"
alias q="exit"
alias o="open"
alias c="clear"
alias h="history"
alias -- +x="chmod +x"
alias -- -x="chmod -x"
alias t="top -o vsize" # memory
alias tu="top -o cpu" # cpu
alias x="extract"
function j() {cd `autojump $1`}
function k() {ps ax | grep $1 | cut -d ' ' -f 2 | xargs kill}

