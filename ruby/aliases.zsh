# Ruby / rake aliases
alias bunrmigdev="bundle exec rails db:migrate RAILS_ENV=development"
alias bunrmigtest="bundle exec rails db:migrate RAILS_ENV=test"
alias rmigdev="bin/rake db:migrate RAILS_ENV=development"
alias rmigtest="bin/rake db:migrate RAILS_ENV=test"

# Grep rake routes
grakeout(){
 bin/rails routes -c "$1" --expanded
}
#
grakeout_simple(){
  bin/rake routes | grep "$1" 
}

alias groute="grakeout"
alias groutesim="grakeout_simple"

alias bsr="bin/spring rspec --color --format d "