# Mac OS X iTerm2 Settings

## Installation
You can run the included bash script to install or update your preferences.
Note that iTerm.app could overwrite your preferences when it exits so there
are some checks to make sure it's doing it's work cleanly.

Note that these settings assume that the *Inconsolata* font is already
installed. To download and install, simply:

```sh
# install nicer coding font (click "install" when prompted)
font=Inconsolata.otf && \
  curl http://www.levien.com/type/myfonts/$font -o /tmp/$font && \
  open -W -a /Applications/Font\ Book.app /tmp/$font && \
  rm /tmp/$font && \
  unset font
```

Click **"install"** in *Font Book.app* when prompted, then quit.

Now install the settings:

```sh
curl -L https://raw.github.com/fnichol/macosx-iterm2-settings/master/contrib/install-settings.sh | bash
```

## iTerm.app Installation
Need iTerm.app? Simple:

```sh
curl -L https://gist.github.com/fnichol/824149/raw/iterm2_install.sh | bash
```
