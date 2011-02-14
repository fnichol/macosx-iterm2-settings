# Mac OS X iTerm2 Settings #

## Installation ##
You can run the included bash script to install or update your preferences. Note that iTerm.app could overwrite your preferences when it exits so there are some checks to make sure it's doing it's work cleanly.

    bash < <(curl -L https://github.com/fnichol/macosx-iterm2-settings/raw/master/contrib/install-settings.sh)

Note that these settings assume that the *Inconsolata* font is already installed. To download and install, simply:

    # install nicer coding font (click "install" when prompted)
    font=Inconsolata.otf && \
      curl http://www.levien.com/type/myfonts/$font -o /tmp/$font && \
      open -W -a /Applications/Font\ Book.app /tmp/$font && \
      rm /tmp/$font && \
      unset font

Click **"install"** in *Font Book.app* when prompted, then quit.

## iTerm.app Installation ##
Need iTerm.app? Simple:

    bash < <(curl -L http://gist.github.com/raw/824149/iterm2_install.sh)
