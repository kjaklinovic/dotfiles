#!/usr/bin/env zsh

NT_PROMPT_SYMBOL=❱

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[green]%}git:(%{$fg[magenta]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
ZSH_THEME_GIT_PROMPT_DIRTY="%{$fg[yellow]%}) %{$fg[yellow]%}✗"
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[green]%})"

function precmd(){
  autoload -U add-zsh-hook
  setopt prompt_subst

  if [[ "$NT_HIDE_COUNT" == '1' ]]; then
  	command_count='  '
  else
  	command_count='%F{gray}%i %f'
  fi

  PROMPT='%(?.%F{magenta}${NT_PROMPT_SYMBOL}%f.%F{red}${NT_PROMPT_SYMBOL}%f) '

  if [[ "$NT_HIDE_EXIT_CODE" == '1' ]]; then
  	RPROMPT=''
  else
  	RPROMPT='%F{red}%2~ $(git_prompt_info) %(?..%F{red}%B%S  $?  %s%b%f)'
  fi
  
}

