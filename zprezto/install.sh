# Install zprezto
git clone --recursive https://github.com/sorin-ionescu/prezto.git "${ZDOTDIR:-$HOME}/.zprezto"

# Copy default config files 
setopt EXTENDED_GLOB
for rcfile in "${ZDOTDIR:-$HOME}"/.zprezto/runcoms/^README.md(.N); do
  ln -s "$rcfile" "${ZDOTDIR:-$HOME}/.${rcfile:t}"
done

# clone zprezto-contrib
git clone --recurse-submodules https://github.com/belak/prezto-contrib "${ZPREZTODIR}/contrib"

# Set Zsh as your default shell
chsh -s /bin/zsh