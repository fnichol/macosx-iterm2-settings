#!/usr/bin/env bash
# shellcheck disable=SC2059

main() {
  set -eu
  if [ -n "${DEBUG:-}" ]; then set -x; fi

  # shellcheck source=contrib/install-settings.sh
  . "${0%/*}/install-settings.sh"

  need_cmd plutil
  need_cmd xmllint
  check_for_iterm

  local working_prefs repo_prefs
  working_prefs="$HOME/Library/Preferences/com.googlecode.iterm2.plist"
  repo_prefs="$(dirname "$0")/../com.googlecode.iterm2.plist"

  header "Copying working preferences from: $working_prefs"
  if plutil -convert xml1 -o - "$working_prefs" \
      | xmllint --format - > "$repo_prefs"; then
    info "Updated XML in $(basename "$repo_prefs")."
    info "Run: \`git diff\' to see changes."
  else
    warn "A failure occured when converting preferences."
    exit_with "Update failed" 5
  fi
}

main "$@" || exit 99
