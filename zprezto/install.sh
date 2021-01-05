# Install zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

sh ./copy-configs.sh

# clone zprezto-contrib
git clone --recurse-submodules https://github.com/belak/prezto-contrib "${ZPREZTODIR}/contrib"

# Set Zsh as your default shell
chsh -s /bin/zsh