

# Remove fish help message on every new session
set fish_greeting


# Load aliases
source ~/.config/fish/aliases.fish

fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path  $HOME/.cargo/bin
fish_add_path  $HOME/.cargo/env.fish
fish_add_path /opt/homebrew/opt/libpq/bin

source /opt/homebrew/opt/asdf/libexec/asdf.fish
