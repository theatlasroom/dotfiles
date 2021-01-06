# Install zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"
# mkdir "~/.zprezto/contrib"

# # Copy default config files 
sh ~/.dotfiles/zprezto/copy-deps.sh

# clone zprezto-contrib
git clone --recurse-submodules https://github.com/belak/prezto-contrib "${ZDOTDIR:-$HOME}/.zprezto/contrib"

# Set Zsh as your default shell
chsh -s /bin/zsh