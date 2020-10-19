
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

# Set path for openssl
export PKG_CONFIG_PATH="/usr/local/opt/openssl@1.1/lib/pkgconfig:$PKG_CONFIG_PATH"