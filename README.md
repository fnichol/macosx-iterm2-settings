# macOS iTerm2 Settings

[![license](http://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/fnichol/macosx-iterm2-settings/blob/master/LICENSE-MIT)

A project to save the settings and preferences for [iTerm2](https://www.iterm2.com/) to a Git repository in XML format which is easier for humans to reason about.

There are 2 included programs:

* [`install-settings.sh`](contrib/install-settings.sh): downloads the XML file, converts it into the the binary format expected by the application and installs it into the correct location
* [`update-settings.sh`](contrib/update-settings.sh): takes the current settings and preferences in binary format and converts it to an XML file in the project (`git diff` can be used to inspect any changes)

Note that iTerm.app could overwrite your preferences when it exits so there are some checks to make sure it's doing it's work cleanly.

## Pre-requisites

These particular settings use the [Inconsolata](http://levien.com/type/myfonts/inconsolata.html) font which is assumed to already be installed. To download and install, simply use [Homebrew-Cask](https://github.com/caskroom/homebrew-cask):

```sh
brew cask install font-inconsolata
```

To install iTerm2 you can also use Homebrew-Cask:

```sh
brew cask install iterm2
```

## Installation

You can install the settings by "curl bashing" the installation script:

```sh
curl -sSf https://raw.githubusercontent.com/fnichol/macosx-iterm2-settings/master/contrib/install-settings.sh | bash
```

Alternatively, clone the Git repository and run the command from there:

```sh
git clone https://github.com/fnichol/macosx-iterm2-settings.git
cd macosx-iterm2-settings
./contrib/install-settings.sh
```

## Updating

Updating the current settings and preferences XML file is done by running the update program out of the Git clone:

```sh
./contrib/update-settings.sh
```

You can inspect any changes with `git diff` and commit any changes by:

```sh
git add com.googlecode.iterm2.plist
git commit
```
