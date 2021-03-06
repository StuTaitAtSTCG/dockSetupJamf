#!/bin/bash

user=$(python -c 'from SystemConfiguration import SCDynamicStoreCopyConsoleUser; import sys; username = (SCDynamicStoreCopyConsoleUser(None, None, None) or [None])[0]; username = [username,""][username in [u"loginwindow", None, u""]]; sys.stdout.write(username + "\n");')

sudo -u $user /usr/local/bin/dockutil --remove all #/Volumes/Users/$3

sleep 5

sudo -u $user /usr/local/bin/dockutil --add /Applications/Launchpad.app --position beginning --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Safari.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Google\ Chrome.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Microsoft\ Word.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Microsoft\ Excel.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Microsoft\ PowerPoint.app --no-restart
sudo -u $user /usr/local/bin/dockutil /Applications/OneDrive.app --no-restart

sudo -u $user /usr/local/bin/dockutil --add '~/Downloads' --view list --display folder --sort dateadded

#killall cfprefsd

#killall Dock

exit 0
