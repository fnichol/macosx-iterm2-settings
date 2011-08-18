#!/usr/bin/env bash
set -e

working_prefs="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
repo_prefs="$(dirname $0)/../com.googlecode.iterm2.plist"

printf "==> Copying working preferences from: $working_prefs ...\n"
plutil -convert xml1 -o - $working_prefs | xmllint --format - > $repo_prefs
exit_status=$?
printf "===> Updated XML in $(basename $repo_prefs).\n"

printf "Run: git diff to see changes.\n"
exit $exit_status
