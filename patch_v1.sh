#!/bin/bash

PATH_TO_BOOT_ONCE='/usr/local/outset/boot-once'
echo $PATH_TO_BOOT_EVERY
PATH_TO_LOGIN_PRIVELEGED_ONCE='/usr/local/outset/login-privileged-once'
echo $PATH_TO_LOGIN_PRIVELEGED_ONCE
TEST_PATH='/tmp'
echo $TEST_PATH


touch $TEST_PATH/a_disable_multi_session.sh
echo '#!/bin/bash' >> $PATH_TO_BOOT_ONCE/a_disable_multi_session.sh
echo 'defaults write /Library/Preferences/.GlobalPreferences MultipleSessionEnabled -bool NO' >> $PATH_TO_BOOT_ONCE/a_disable_multi_session.sh
