# Abbreviations: Simple interactive expansions
abbr c clear
abbr cd z
abbr js 'cd /Users/saratrasv/Developer/javascript'
abbr main 'cd $HOME/Developer/java/'
abbr dl "cd ~/Downloads"
abbr dt "cd ~/Desktop"
abbr d "cd ~/Developer/"
abbr i "cd ~/Developer/icc-352"
abbr nconf 'cd ~/.config/nvim/lua'
abbr vm nvim +Telescope\\ find_files
abbr p3 python3
abbr g git
abbr n nvim
abbr grep 'grep --color=auto'
abbr fgrep 'fgrep --color=auto'
abbr egrep 'egrep --color=auto'
abbr sudo 'sudo '
abbr week 'date +%V'
abbr reload "exec fish"
abbr path 'echo $PATH | tr " " "\n"'

# Aliases: Fixed command replacements or with flags
alias l "eza -lF --git --icons"
alias ls "eza --git --icons"
alias la "eza --git -A --icons"
alias ll "eza -ls size --git --icons"
alias lla "eza -lAF --git --icons"
alias lsd "eza -lF --git | grep '^d'"
alias nt 'nvim $(fzf --preview="bat {}")'
alias gignored 'git ls-files --ignored --exclude-standard --others'
alias r ranger
alias ld lazydocker
alias gs 'git status -s'
alias jscode 'code . --profile "Node.js"'
alias texcode 'code . --profile "Latex"'
alias jvcode 'code . --profile "Java"'
alias bic 'brew install --cask'
alias bi 'brew install'
alias bs 'brew search'
alias br 'brew remove'
alias fmt 'biome format --write'
alias lint 'biome check --write'
alias fnmlocal 'fnm use --version-file-strategy local'

# Functions: Dynamic, multi-step, or complex logic
function update
    brew update
    brew upgrade
    brew cleanup --prune=all
end

function ips
    ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, ""); print }'
end

function ip
    dig +short myip.opendns.com @resolver1.opendns.com
end

function localip
    ipconfig getifaddr en0
end

function afk
    /System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend
end
