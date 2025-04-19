# Homebrew
set -gx PATH /opt/homebrew/bin $PATH
eval (/opt/homebrew/bin/brew shellenv)

# Generated for envman. Do not edit.
test -s ~/.config/envman/load.fish; and source ~/.config/envman/load.fish

# pnpm
set -gx PNPM_HOME "/Users/saratrasv/Library/pnpm"
if not string match -q -- $PNPM_HOME $PATH
  set -gx PATH "$PNPM_HOME" $PATH
end
# pnpm end
