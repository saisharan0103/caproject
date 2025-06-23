#!/bin/sh
if [ -z "$husky_skip_init" ]; then
  debug () {
    [ "$HUSKY_DEBUG" = "1" ] && echo "husky (debug) - $1"
  }
  readonly hook_name="$(basename "$0")"
  debug "starting $hook_name..."
  if [ -f ~/.huskyrc ]; then
    debug "~/.huskyrc found, sourcing..."
    . ~/.huskyrc
  fi
  export readonly husky_skip_init=1
  sh -e "$0" "$@"
  exitCode="$?"
  if [ $exitCode != 0 ]; then
    debug "husky - $hook_name failed (code $exitCode)"
  fi
  exit $exitCode
fi
