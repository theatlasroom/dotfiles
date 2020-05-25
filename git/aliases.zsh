# The rest of my fun git aliases
# Remove `+` and `-` from start of diff lines; just rely upon color.
alias gd='git diff --color | sed "s/^\([^-+ ]*\)[-+ ]/\\1/" | less -r'

alias gs='git status -sb' # upgrade your git if -sb breaks for you. it's fun.
alias gac='git add -A && git commit -m'
alias ge='git-edit-new'

# cos im a dumb dumb!
alias gcsmg='gcmsg'
alias gmcsg='gcmsg'
alias whipit='git commit -m "[skip ci] wip"'
alias gwip="whipit"

# git
alias gfix='git commit -a --fixup'
alias gpfl='git push --force-with-lease'

# Checkout a tag gctag "v12.10-ee"
gitcheckout-tag(){
  TAG="$1"

  git checkout tags/"$TAG" -b "$TAG"
  
  # ignore the db file
  git checkout db

  # refresh gdk and assets
  yarn && bin/rake db:migrate RAILS_ENV=development
  gdk reconfigure
  gdk restart
}
alias gctag="gitcheckout-tag"
