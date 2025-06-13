# fino-time.zsh-theme (modificado para WezTerm)

function virtualenv_info {
    [ $CONDA_DEFAULT_ENV ] && echo "%F{#bea3c7}($CONDA_DEFAULT_ENV)%f "
    [ $VIRTUAL_ENV ] && echo '%F{#bea3c7}('`basename $VIRTUAL_ENV`')%f '
}

function prompt_char {
    git branch >/dev/null 2>/dev/null && echo '%F{#bea3c7}⠠⠵%f' && return
    echo '%F{#bea3c7}○%f'
}

function box_name {
  local box="${SHORT_HOST:-$HOST}"
  [[ -f ~/.box-name ]] && box="$(< ~/.box-name)"
  echo "${box:gs/%/%%}"
}

PROMPT="╭─%F{#bea3c7}%n%f %F{#8a7f98}at%f %F{#7aa6da}$(box_name)%f %F{#8a7f98}in%f %B%F{#bea3c7}%~%f%b\$(git_prompt_info)\$(ruby_prompt_info) %F{#8a7f98}%D - %*%f
╰─\$(virtualenv_info)\$(prompt_char) "

ZSH_THEME_GIT_PROMPT_PREFIX=" %F{#8a7f98}on%f %F{#ffffff}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%f"
ZSH_THEME_GIT_PROMPT_DIRTY="%F{#ff5f87}✘✘✘"
ZSH_THEME_GIT_PROMPT_CLEAN="%F{#bea3c7}✔"
ZSH_THEME_RUBY_PROMPT_PREFIX=" %F{#8a7f98}using%F{#a8a8a8} ‹"
ZSH_THEME_RUBY_PROMPT_SUFFIX="›%f"
