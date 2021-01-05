# kill node
alias killnode="killall -KILL node"

# kill ruby
alias killruby="killall -KILL ruby"

# kill spring
alias killspring="killall spring"

# kill postgres 
alias killpostgres="killall -KILL postgres"

# kill workhorse, runner and pages
alias killghrp="killall -KILL gitlab-workhorse gitlab-runner gitlab-pages"

# kill jaeger
alias killjag="killall -KILL jaeger-all-in-one"

# kill glab
alias killglab="killnode && killruby && killpostgres && killjag && killghrp"

# glab dirs
alias foss="~/glab/gdk-foss/gitlab"
alias ee="~/glab/gdk/gitlab"
alias gl="ee"
alias glab="ee"
alias glui="~/glab/gitlab-ui"

alias killgdk="ps aux | grep gitlab | awk '{print $2}' | xargs kill"
alias wtfgitaly="ps aux | grep gitaly"
alias gupdate="gdk update && gco db/schema.rb"
# alias gupd="gupdate && gfresh"
alias grdb="gdk run db"
alias gapp="gdk run app"
alias grun="gdk run"
alias gstart="gdk start"
alias grestart="gdk stop && gdk start"
alias gstop="gdk stop"
# Skip pipelines on push, not quite working 🤔
alias gpnoci="git push -o ci.skip"
alias gpflnoci="git push -o ci.skip --force-with-lease"
# Refresh gdk
gdk-refresh() {
		yarn && bundle
		bin/rails db:migrate RAILS_ENV=development
}
alias gfresh="gdk-refresh"
gffenable(){
  echo "Feature.enable(:$1)" | bundle exec rails c
}
gffdisable(){
  echo "Feature.disable(:$1)" | bundle exec rails c
}
# Enable / disable feature flags
# $ gffe feature_flag_to_enable
alias gffe="gffenable"
alias gffd="gffdisable"

# Attempts to automatically update master and return to the current branch
# Useful just before a rebase
gupdate-master(){
  # Store the current branch name
  branch_name="$(git symbolic-ref HEAD 2>/dev/null)" ||
  branch_name="(unnamed branch)"     # detached HEAD
  branch_name=${branch_name##refs/heads/}

  echo "Currently on branch $branch_name"

  # udpate gdk
  gdk update

  
  echo "Checking out the schema file"

  # remove the annoying changes in db/schema
  git checkout db

  echo "Restoring branch $branch_name"

  # restore original branch
  git checkout "$branch_name"

  echo "Refresh GDK"

  # refresh the gdk
  gfresh
}
alias gupd="gupdate-master"

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
