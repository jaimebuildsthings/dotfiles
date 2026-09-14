# Remove fish help message on every new session
set fish_greeting

# Load aliases
source ~/.config/fish/aliases.fish

# Load cargo
source "$HOME/.cargo/env.fish"

# Load starship
starship init fish | source

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

# Update PATH
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin
fish_add_path  $HOME/.cargo/bin
fish_add_path  $HOME/.cargo/env.fish
fish_add_path /opt/homebrew/opt/libpq/bin
fish_add_path ~/.local/bin

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/jaimeliz/Downloads/google-cloud-sdk/path.fish.inc' ]; . '/Users/jaimeliz/Downloads/google-cloud-sdk/path.fish.inc'; end
