#Shell commands shortcuts
abbr c clear
abbr cd z

#move working directory shortcuts
abbr js 'cd /Users/saratrasv/Developer/javascript'
abbr main 'cd $HOME/Developer/java/'
abbr dl "cd ~/Downloads"
abbr dt "cd ~/Desktop"
abbr d "cd ~/Developer/"
abbr i "cd ~/Developer/icc-352"
abbr nconf 'cd ~/.config/nvim/lua'

#To run CLIS
abbr dotenv dotenv-vault
abbr p3 python3
abbr dc docker-compose
abbr g git
abbr gg 'git g'
abbr n nvim
abbr nt 'nvim $(fzf --preview="bat {}")'
abbr gignored 'git ls-files --ignored --exclude-standard --others'
abbr r ranger
abbr cat bat
abbr ld lazydocker

#Run CLIS with options
abbr gs 'git status -s'
abbr jscode 'code . --profile "Node.js"'
abbr texcode 'code . --profile "Latex"'
abbr jvcode 'code . --profile "Java"'
abbr bic 'brew install --cask'
abbr bi 'brew install'
abbr bs 'brew search'
abbr br 'brew remove'
abbr fmt 'biome format --write'
abbr lint 'biome check --write'
abbr fnmlocal 'fnm use --version-file-strategy local'

# Easier navigation: .., ..., ...., ....., ~ and -
abbr .. "cd .."
abbr ... "cd ../.."
abbr .... "cd ../../.."
abbr ..... "cd ../../../.."

abbr l "eza -lF --git"
abbr ls "eza --git"
abbr la "eza --git -A"
abbr ll "eza -ls size --git"
abbr lla "eza -lAF --git"
abbr lsd "eza -lF --git | grep '^d'"

# Always enable colored `grep` output
# Note: `GREP_OPTIONS "--color=auto"` is deprecated, hence the abbr usage.
abbr grep 'grep --color=auto'
abbr fgrep 'fgrep --color=auto'
abbr egrep 'egrep --color=auto'

# Enable aliases to be sudo’ed
abbr sudo 'sudo '

# Get week number
abbr week 'date +%V'

# Get macOS Software Updates, and update installed Ruby gems, Homebrew, npm, and their installed packages
abbr update 'sudo softwareupdate -i -a; brew update; brew upgrade; brew cleanup; npm install npm -g; npm update -g; sudo gem update --system; sudo gem update; sudo gem cleanup'

# Google Chrome

# IP addresses
abbr ip "dig +short myip.opendns.com @resolver1.opendns.com"
abbr localip "ipconfig getifaddr en0"
abbr ips "ifconfig -a | grep -o 'inet6\? \(addr:\)\?\s\?\(\(\([0-9]\+\.\)\{3\}[0-9]\+\)\|[a-fA-F0-9:]\+\)' | awk '{ sub(/inet6? (addr:)? ?/, \"\"); print }'"

# Lock the screen (when going AFK)
abbr afk "/System/Library/CoreServices/Menu\ Extras/User.menu/Contents/Resources/CGSession -suspend"

# Reload the shell (i.e. invoke as a login shell)
abbr reload "exec fish"

# Print each PATH entry on a separate line
abbr path 'echo $PATH | tr " " "\n"'
