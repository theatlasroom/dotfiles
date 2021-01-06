# install neovim
# note: now installed via brew

# set symlinks to the vim dirs
ln -s ~/.dotfiles/config/nvim/.vim ~/.vim
ln -s ~/.dotfiles/config/nvim ~/.config/nvim

# Install some plugins
curl -fLo ~/.dotfiles/config/nvim/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

# Install pynvim https://github.com/neovim/neovim/wiki/FAQ#python-support-isnt-working
python3 -m pip install --upgrade pynvim