# Mac OS X iTerm2 Settings

## Installation
You can run the included bash script to install or update your preferences.
Note that iTerm.app could overwrite your preferences when it exits so there
are some checks to make sure it's doing it's work cleanly.

Note that these settings assume that the *Inconsolata* font is already
installed. To download and install, simply use [Homebrew-Cask](https://github.com/caskroom/homebrew-cask):

```sh
brew tap caskroom/fonts
brew cask install font-inconsolata
```

Need iTerm.app? Simple:

```sh
brew cask install iterm2
```

Now install the settings:

```sh
curl -sSf https://raw.githubusercontent.com/fnichol/macosx-iterm2-settings/master/contrib/install-settings.sh | bash
```
