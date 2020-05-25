# autoload colors && colors

# ####################################################################################################
# #                                          Git
# ####################################################################################################

# if (( $+commands[git] ))
# then
#   git="$commands[git]"
# else
#   git="/usr/bin/git"
# fi

# git_branch() {
#   echo $($git symbolic-ref HEAD 2>/dev/null)
# }

# git_dirty() {
#   if $(! $git status -s &> /dev/null)
#   then
#     echo ""
#   else
#     if [[ $($git status --porcelain) == "" ]]
#     then
#       echo "on %{$fg_bold[green]%}$(git_prompt_info)%{$reset_color%}"
#     else
#       echo "on %{$fg_bold[red]%}$(git_prompt_info) ✗%{$reset_color%}"
#     fi
#   fi
# }

# git_prompt_info () {
#  ref=$(git_branch) || return
# # echo "(%{\e[0;33m%}${ref#refs/heads/}%{\e[0m%})"
#  echo "${ref#refs/heads/}"
# }

# # This assumes that you always have an origin named `origin`, and that you only
# # care about one specific origin. If this is not the case, you might want to use
# # `$git cherry -v @{upstream}` instead.
# need_push () {
#   if [ $($git rev-parse --is-inside-work-tree 2>/dev/null) ]
#   then
#     number=$($git cherry -v origin/$(git symbolic-ref --short HEAD) 2>/dev/null | wc -l | bc)

#     if [[ $number == 0 ]]
#     then
#       echo " "
#     else
#       echo " with %{$fg_bold[magenta]%}$number unpushed%{$reset_color%}"
#     fi
#   fi
# }

# # directory_name() {
# #   echo "%{$fg_bold[cyan]%}%1/%\/%{$reset_color%}"
# # }

# battery_status() {
#   if [[ $(sysctl -n hw.model) == *"Book"* ]]
#   then
#     $ZSH/bin/battery-status
#   fi
# }

# git_prompt () {
#   echo " $(git_dirty)$(need_push)"
# }

# ####################################################################################################
# #                                          JavaScript
# ####################################################################################################

# nvm_prompt() {
#   $(type nvm >/dev/null 2>&1) || return

#   local nvm_prompt
#   nvm_prompt=$(nvm current 2>/dev/null)
#   [[ "${nvm_prompt}x" == "x" ]] && return
#   echo "%{$fg_bold[yellow]%}Node $nvm_prompt%{$reset_color%}"
# }

# npm_prompt() {
#   $(type npm >/dev/null 2>&1) || return

#   local npm_prompt
#   npm_prompt=$(npm --version 2>/dev/null)
#   echo "%{$fg_bold[yellow]%}npm $npm_prompt%{$reset_color%}"
# }

# ####################################################################################################
# #                                   Working Directory
# ####################################################################################################

# # http://stevelosh.com/blog/2010/02/my-extravagant-zsh-prompt/#current-directory
# collapse_pwd () {
#   echo $(pwd | sed -e "s,^$HOME,~,")
# }

# directory_name() {
#   echo "%{$fg_bold[cyan]%}$(collapse_pwd)%{$reset_color%}"
# }

# ####################################################################################################
# #                                          Misc.
# ####################################################################################################

# user_name () {
#   echo "%{$fg[magenta]%}%n%{$reset_color%}"
# }

# host () {
#   echo "%{$fg[yellow]%}%m%{$reset_color%}"
# }

# ####################################################################################################


# export PROMPT=$'\n$(user_name) at $(host) in $(directory_name)$(git_prompt)\n› '
# # export PROMPT=$'\n$(battery_status)in $(directory_name) $(git_dirty)$(need_push)\n› '

# set_prompt () {
#   export RPROMPT="%{$fg_bold[cyan]%}$(nvm_prompt) / $(npm_prompt)%{$reset_color%}"
# }

# precmd() {
#   title "zsh" "%m" "%55<...<%~"
#   set_prompt
# }
