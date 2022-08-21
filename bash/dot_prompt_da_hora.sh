#!/usr/bin/env bash

# Prompt da hora. Exibe um relógio animado e também informações sobre o git e tipo de projeto

# Inspirado pelo tema
#  - Cupcake https://github.com/ohmybash/oh-my-bash/blob/master/themes/cupcake/cupcake.theme.sh

# Exemplos:

# Com git
# ┌😎 usuario @ 💻  meu-pc in 📁  project 🕗  08:00:00
# ├🌎  on 🌳  (master) 
# └❯ 

# Sem git
# ┌😎 usuario @ 💻  meu-pc in 📁  ~ 🕣  08:30:00
# └❯ 

# colors

black="\[\e[0;30m\]"
red="\[\e[0;31m\]"
green="\[\e[0;32m\]"
yellow="\[\e[0;33m\]"
blue="\[\e[0;34m\]"
purple="\[\e[0;35m\]"
cyan="\[\e[0;36m\]"
white="\[\e[0;37m\]"
orange="\[\e[0;91m\]"

bold_black="\[\e[30;1m\]"
bold_red="\[\e[31;1m\]"
bold_green="\[\e[32;1m\]"
bold_yellow="\[\e[33;1m\]"
bold_blue="\[\e[34;1m\]"
bold_purple="\[\e[35;1m\]"
bold_cyan="\[\e[36;1m\]"
bold_white="\[\e[37;1m\]"
bold_orange="\[\e[91;1m\]"

underline_black="\[\e[30;4m\]"
underline_red="\[\e[31;4m\]"
underline_green="\[\e[32;4m\]"
underline_yellow="\[\e[33;4m\]"
underline_blue="\[\e[34;4m\]"
underline_purple="\[\e[35;4m\]"
underline_cyan="\[\e[36;4m\]"
underline_white="\[\e[37;4m\]"
underline_orange="\[\e[91;4m\]"

background_black="\[\e[40m\]"
background_red="\[\e[41m\]"
background_green="\[\e[42m\]"
background_yellow="\[\e[43m\]"
background_blue="\[\e[44m\]"
background_purple="\[\e[45m\]"
background_cyan="\[\e[46m\]"
background_white="\[\e[47;1m\]"
background_orange="\[\e[101m\]"

normal="\[\e[0m\]"
reset_color="\[\e[39m\]"

# ICONS =======================================================================

icon_start="┌"
icon_user="😎 "
icon_host=" @ 💻  "
icon_directory=" in 📁  "
icon_branch="🌳 "
#~ icon_end="└❯ "
icon_end="└⫸ "
icon_php="🌎"
icon_rn="📱"
icon_gd="🎮"
icon_java="☕"

# extra spaces ensure legiblity in prompt

# FUNCTIONS ===================================================================

# Print time emoji
function print_time_emoji {
  declare -A clocks
  clocks["011"]="🕐"
  clocks["012"]="🕜"
  clocks["021"]="🕑"
  clocks["022"]="🕝"
  clocks["031"]="🕒"
  clocks["032"]="🕞"
  clocks["041"]="🕓"
  clocks["042"]="🕟"
  clocks["051"]="🕔"
  clocks["052"]="🕠"
  clocks["061"]="🕕"
  clocks["062"]="🕡"
  clocks["071"]="🕖"
  clocks["072"]="🕢"
  clocks["081"]="🕗"
  clocks["082"]="🕣"
  clocks["091"]="🕘"
  clocks["092"]="🕤"
  clocks["101"]="🕙"
  clocks["102"]="🕥"
  clocks["111"]="🕚"
  clocks["112"]="🕦"
  clocks["121"]="🕛"
  clocks["122"]="🕧"

  HOUR=$(date +%I)
  MIN=10#$(date +%M)
  if [[ MIN -ge 00 && MIN -lt 30 ]]; then
    IDX="${HOUR}1"
  else
    IDX="${HOUR}2"
  fi
  echo ${clocks[${IDX}]}
}

function project_type {
  if [[ -f "$(git rev-parse --show-toplevel)/composer.json" ]]; then
    echo "${icon_php}  "
  fi

  if [[ -f "$(git rev-parse --show-toplevel)/app.json" ]]; then
    echo "${icon_rn}  "
  fi

  if [[ -f "$(git rev-parse --show-toplevel)/project.godot" ]]; then
    echo "${icon_gd}  "
  fi

  if [[ -f "$(git rev-parse --show-toplevel)/.project" && -f "$(git rev-parse --show-toplevel)/.classpath" ]]; then
    echo "${icon_java}  "
  fi

}

# PROMPT OUTPUT ===============================================================

# Displays the current prompt
function prompt_command() {
  PS1="${icon_start}${icon_user}${bold_red}\u${normal}${icon_host}${bold_cyan}\h${normal}${icon_directory}${bold_purple}\W${normal} \$(print_time_emoji)  ${bold_orange}\t${normal}\$([[ -n \$(git branch 2> /dev/null) ]] && echo \"\n├\$(project_type)on ${icon_branch}${bold_green}\$(__git_ps1)${normal} \")${normal}${white}${normal}\n${icon_end}"
  PS2="${icon_end}"
}

prompt_command
