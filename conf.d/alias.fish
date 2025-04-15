#Shell commands shortcuts
alias c='clear'
alias cd='z'
alias la='ls -A'

#move working directory shortcuts
alias js='cd /Users/saratrasv/Developer/javascript'
alias main='cd $HOME/Developer/java/'
alias dl="cd ~/Downloads"
alias dt="cd ~/Desktop"
alias d="cd ~/Developer/"
alias i="cd ~/Developer/icc-352"
alias nconf='cd ~/.config/nvim/lua'

#To run CLIS
alias dotenv='dotenv-vault'
alias p3='python3'
alias dc='docker-compose'
alias g='git'
alias gg='git g'
alias n='nvim'
alias nt='nvim $(fzf --preview="bat {}")'
alias gignored='git ls-files --ignored --exclude-standard --others'
alias r='ranger'
alias cat='bat'
alias ld='lazydocker'

#Run CLIS with options
alias gs='git status -s'
alias jscode='code . --profile "Node.js"'
alias texcode='code . --profile "Latex"'
alias jvcode='code . --profile "Java"'
alias bic='brew install --cask'
alias bi='brew install'
alias bs='brew search'
alias br='brew remove'
alias fmt='biome format --write'
alias lint='biome check --write'
alias fnmlocal='fnm use --version-file-strategy local'

# Easier navigation: .., ..., ...., ....., ~ and -
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

alias l="eza -lF --git"
alias ll="eza -ls size --git"
alias lla="eza -lAF --git"
alias lsd="eza -lF --git | grep '^d'"
alias ls="eza --git"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS="--color=auto"` is deprecated, hence the alias usage.
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

# Enable aliases to be sudo’ed
alias sudo='sudo '

# Get week number
alias week='date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
alias update='sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Google Chrome

# IP addresses
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"
alias localip="ipconfig getifaddr en0"
alias ips="ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Lock the screen (when going AFK)
alias afk="/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
alias reload="exec fish"

# Print each PATH entry on a separate line
