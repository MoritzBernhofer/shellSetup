clear

autoload -U compinit && compinit -C

# paths

path+=('/opt/homebrew/bin')
path+=('/Users/moritz/Library/Python/3.9/bin')
export PATH="$PATH:/Users/moritz/.dotnet/tools"

# quality of life
alias cd..="cd .."
alias ls="lsd -lah"

# customscripts
alias run="~/Documents/GitHub/shellSetup/customScripts/run.sh"
alias opengit='~/Documents/GitHub/shellSetup/customScripts/openGitRepo.sh'
alias runai='~/Documents/GitHub/shellSetup/customScripts/runAI.sh'

# kubernetes
alias kub='kubectl'

# paths
alias cdtmp='cd ~/Desktop/tmp/'
alias config='nvim ~/Documents/GitHub/shellSetup/startup.sh'
alias pcp='pwd | pbcopy'
alias cdgit='cd ~/Documents/Github'

#docker
alias dcb='docker compose build'
alias dcu='docker compose up'
alias dps='docker ps -la'

#dotnet
alias addMigration='dotnet ef migrations add Initial'
alias applyMigration='dotnet ef database update'

# python
alias python='python3'
alias pip='pip3'

# starship

eval "$(starship init zsh)"

# startup script

neofetch
