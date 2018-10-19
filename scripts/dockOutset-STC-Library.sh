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
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Acrobat\ DC/Adobe\ Acrobat.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ After\ Effects\ CC\ 2018/Adobe\ After\ Effects\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Animate\ CC\ 2018/Adobe\ Animate\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Audition\ CC\ 2018/Adobe\ Audition\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Bridge\ CC\ 2018/Adobe\ Bridge\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Character\ Animator\ CC\ 2018/Adobe\ Character\ Animator\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Dreamweaver\ CC\ 2018/Adobe\ Dreamweaver\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Illustrator\ CC\ 2018/Adobe\ Illustrator.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ InCopy\ CC 2018/Adobe\ InCopy\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ InDesign\ CC\ 2018/Adobe\ InDesign\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Lightroom\ Classic\ CC/Adobe\ Lightroom\ Classic\ CC.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Media\ Encoder\ CC\ 2018/Adobe\ Media\ Encoder\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Muse\ CC 2018/Adobe\ Muse\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Photoshop\ CC\ 2018/Adobe\ Photoshop\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Prelude\ CC\ 2018/Adobe\ Prelude\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Premiere\ Pro\ CC\ 2018/Adobe\ Premiere\ Pro\ CC\ 2018.app --no-restart
sudo -u $user /usr/local/bin/dockutil --add /Applications/Adobe\ Scout\ CC.app --no-restart
sudo -u $user /usr/local/bin/dockutil /Applications/OneDrive.app --no-restart

sudo -u $user /usr/local/bin/dockutil --add '~/Downloads' --view list --display folder --sort dateadded

#killall cfprefsd

#killall Dock

exit 0
