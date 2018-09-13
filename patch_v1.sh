#!/bin/bash

#create human readable path variables to common paths.
PATH_TO_BOOT_ONCE='/usr/local/outset/boot-once'
PATH_TO_LOGIN_PRIVELEGED_ONCE='/usr/local/outset/login-privileged-once'
TEST_PATH='/tmp'

### START, DISABLE FAST USER SWITCHING ###

#create a file in the directory
touch $PATH_TO_BOOT_ONCE/a_disable_multi_session.sh
#appends whatever is in quotes to the specied path before the >>
echo '#!/bin/bash' >> $PATH_TO_BOOT_ONCE/a_disable_multi_session.sh
#appends to a new line. copies whatever is in quotes to the specified path before >>
echo 'defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool NO' >> $PATH_TO_BOOT_ONCE/a_disable_multi_session.sh
