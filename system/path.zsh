
[[ -s "$HOME/.profile" ]] && source "$HOME/.profile" # Load the default .profile

export PATH="/usr/local/opt/postgresql@10/bin:/usr/local/opt/node@10/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
