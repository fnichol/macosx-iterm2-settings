#!/usr/bin/env bash

if ! command -v curl >/dev/null ; then
  printf "\n>>>> Could not find curl on your PATH so quitting.\n"
  exit 2
fi

if [[ "$TERM_PROGRAM" == "iTerm.app" ]] ; then
  printf "\n>>>> You appear to be running this script from within iTerm.app which could\n"
  printf "     overwrite your new preferences on quit.\n"
  printf ">>>> Please quit iTerm and run this from Terminal.app or an SSH session.\n"
  printf "     Cheers, babe.\n\n"
  exit 3
fi

if ps wwwaux | egrep -q 'iTerm\.app' >/dev/null ; then
  printf "\n>>>> You appear to have iTerm.app currently running. Please quit the\n"
  printf "     application so your updates won't get overridden on quit.\n\n"
  exit 4
fi

plist="com.googlecode.iterm2.plist"
plist_url="https://github.com/fnichol/macosx-iterm2-settings/raw/master/${plist}"

curl -L "$plist_url" -o "${HOME}/Library/Preferences/${plist}"
