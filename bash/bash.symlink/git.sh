# --------------------------------------------------
# Print git branch name in bash prompt
# Orginal found at: http://www.jonmaddox.com/2008/03/13/show-your-git-branch-name-in-your-prompt/
# Some small mods to suit my tastes
# --------------------------------------------------

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1)/'
}

function proml {
  local       GREEN="\[\033[0;32m\]"
  local LIGHT_GREEN="\[\033[1;32m\]"
  local       WHITE="\[\033[1;37m\]"
  case $TERM in
    xterm*)
    TITLEBAR="\[\033]0;\W\007\]"
    ;;
    *)
    TITLEBAR=""
    ;;
  esac

PS1="$WHITE\W$GREEN\$(parse_git_branch)$WHITE$ "
}

proml
