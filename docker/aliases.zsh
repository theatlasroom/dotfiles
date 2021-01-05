alias d='docker $*'
alias d-c='docker-compose $*'

# docker aliases
alias dcub="docker-compose up --build"
alias ddwn="docker-compose down"
# alias dockerclean="docker image prune -a --filter 'until=2m' && docker rmi $(docker images -a --filter=dangling=true -q) && docker rm $(docker ps -q -f status=exited)"