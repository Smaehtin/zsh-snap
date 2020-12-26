#!/bin/zsh
# list contents of plugins dir or repo
# args: [<repo>]
emulate -L zsh; setopt $_znap_opts

local -a files=()
local repo=$(.znap.path $1) || return
[[ -d $repo ]] &&
  files+=( $repo )
[[ -f $cache ]] &&
  files+=( $cache )
(( $#files > 0 )) &&
  eval "ls -l $files"
