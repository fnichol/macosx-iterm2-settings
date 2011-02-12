# Mac OS X iTerm2 Settings #

## Installation ##
The plist file `com.googlecode.iterm2.plist` needs to be installed to
`${HOME}/Library/Preferences/com.googlecode.iterm2.plist`.

Note that these settings assume that the *Inconsolata* font is already installed. To download and install, simply:

    # install nicer coding font (click "install" when prompted)
    font=Inconsolata.otf && \
      curl http://www.levien.com/type/myfonts/$font -o /tmp/$font && \
      open -W -a /Applications/Font\ Book.app /tmp/$font && \
      rm /tmp/$font && \
      unset font
