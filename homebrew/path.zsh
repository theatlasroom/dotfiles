export PATH="$HOME/.cargo/bin:$PATH"

export HOMEBREW_BUNDLE_FILE=~/.dotfiles/Brewfile

# Setup go build directory + add it to the PATH
export GOBIN=$PWD/bin
export PATH=$GOBIN:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm