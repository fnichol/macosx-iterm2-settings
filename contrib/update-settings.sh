#!/usr/bin/env bash
set -e

working_prefs="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
repo_prefs="$(dirname $0)/../com.googlecode.iterm2.plist"

log()   { printf -- "-----> $*\n" ; return $? ; }

log "Copying working preferences from: $working_prefs"
plutil -convert xml1 -o - $working_prefs | xmllint --format - > $repo_prefs
exit_status=$?
log "Updated XML in $(basename $repo_prefs)."

log "Run: `git diff` to see changes."
exit $exit_status
