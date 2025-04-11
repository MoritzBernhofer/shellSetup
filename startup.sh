clear

autoload -U compinit && compinit
path+=('/opt/homebrew/bin')
path+=('/Users/moritz/Library/Python/3.9/bin')
path+=('/opt/homebrew/opt/ruby/bin/ruby')
export PATH="$PATH:/Users/moritz/.dotnet/tools"

alias cd..="cd .."
alias tsc="npx tsc"
alias ls="lsd -lah"
alias run="~/customprograms/./run.sh"
alias killp="~/customprograms/./killp.sh"
alias pcp='pwd | pbcopy'
alias dps='docker ps -la'
alias kub='kubectl'
alias cdtmp='cd ~/Desktop/tmp/'
alias dcb='docker compose build'
alias dcu='docker compose up'
alias addMigration='dotnet ef migrations add Initial'
alias applyMigration='dotnet ef database update'

# starship

eval "$(starship init zsh)"
