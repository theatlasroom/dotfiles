# grc overides for ls
#   Made possible through contributions from generous benefactors like
#   `brew install coreutils`
if $(gls &>/dev/null)
then
  alias ls="gls -F --color"
  alias l="gls -lAh --color"
  alias ll="gls -l --color"
  alias la='gls -A --color'
fi

alias dotfs="~/.dotfiles"
alias vdotfs="vim dotfs"

# when i say vi(m), i actually mean nvim
# alias vi="/usr/local/bin/nvim"
alias vim="/usr/local/bin/nvim"
alias vims="vim -S"
alias nvims="nvim -S"

# download a gitignore file
fetchignore(){
  curl http://www.gitignore.io/api/"$1" >> .gitignore
}

alias getignore="fetchignore"

# rust docs
alias rud="rustup doc --book"

# edit / reload zsh config
alias szsh="source ~/.zshrc"
alias vzsh="vi ~/.zshrc"
alias valias="vi ~/.dotfiles/system/aliases.zsh"
alias viedit="vi ~/.vimrc"
alias nviedit="vi ~/.nvimrc"

# misc
alias lc='colorls -lA --sd'

# Check used ports
cport(){
  lsof -nP -i4TCP:"$1" | grep LISTEN
}
alias checkport="cport"