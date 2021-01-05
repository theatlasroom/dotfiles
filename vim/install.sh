# install neovim
# note: now installed via brew

# set symlinks to the vim dirs
ln -s ~/.dotfiles/config/nvim/.vim ~/.vim
ln -s ~/.dotfiles/config/nvim/init.vim ~/.config/nvim/init.vim
ln -s ~/.dotfiles/config/nvim/.netrwhist ~/.config/nvim/.netrwhist

# Install pynvim https://github.com/neovim/neovim/wiki/FAQ#python-support-isnt-working
python3 -m pip install --upgrade pynvim