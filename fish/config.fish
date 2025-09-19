# Remove fish help message on every new session
set fish_greeting

# Update PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path  $HOME/.cargo/bin
fish_add_path  $HOME/.cargo/env.fish
fish_add_path /opt/homebrew/opt/libpq/bin

# Load aliases
source ~/.config/fish/aliases.fish

# Load cargo
source "$HOME/.cargo/env.fish"

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims
