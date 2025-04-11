clear

autoload -U compinit && compinit

# paths

path+=('/opt/homebrew/bin')
path+=('/Users/moritz/Library/Python/3.9/bin')
export PATH="$PATH:/Users/moritz/.dotnet/tools"

# quality of life
alias cd..="cd .."
alias ls="lsd -lah"

# customscripts
alias killp="~/customprograms/./killp.sh"
alias run="~/customprograms/./run.sh"

# kubernetes
alias kub='kubectl'

# paths
alias cdtmp='cd ~/Desktop/tmp/'
alias startup='nvim ~/Documents/GitHub/shellSetup/startup.sh'
alias pcp='pwd | pbcopy'

#docker
alias dcb='docker compose build'
alias dcu='docker compose up'
alias dps='docker ps -la'

#dotnet
alias addMigration='dotnet ef migrations add Initial'
alias applyMigration='dotnet ef database update'

# starship

eval "$(starship init zsh)"
