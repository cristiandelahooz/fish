set -gx PATH $HOME/.scripts $PATH
set -gx FZF_DEFAULT_OPTS '
    --color=fg:#a3b1b3,fg+:#b3c1c2,bg:-1,bg+:#002c38
    --color=hl:#268bd2,hl+:#5b9bd5,info:#b58900,marker:#2aa198
    --color=prompt:#cb4b16,spinner:#6c71c4,pointer:#d33682,header:#5c6768
    --color=border:#262626,label:#5c6768,query:#b3c1c2
    --border="double" --border-label="" --preview-window="border-bold" --prompt="::"
    --marker="" --pointer="" --separator="─" --scrollbar="│"
    --layout="reverse" --height=70% --margin=0,001%'

set -gx TERM xterm-256color

# theme
set -g theme_color_scheme terminal-dark
set -g fish_prompt_pwd_dir_length 1
set -g theme_display_user yes
set -g theme_hide_hostname no
set -g theme_hostname always

set -gx EDITOR nvim

set -gx GEMINI_SANDBOX true
set -gx XDG_CONFIG_HOME $HOME/.config

# Go
set -g GOPATH $HOME/go
set -gx PATH $GOPATH/bin $PATH
