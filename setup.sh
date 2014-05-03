#!/bin/bash

# Load env vars and functions
source "$(pwd)/setup_utils.sh"

./homebrew_setup.sh
./dotfile_setup.sh
./posix_app_setup.sh
./sublime_setup.sh
./git_setup.sh
./vim_setup.sh
./ruby_setup.sh
# Mac-specific code
if [ $(uname) = 'Darwin' ]; then 
  ./mac_app_setup.sh
  ./.osx
fi
# CriticMarkup no longer installed.
#./criticmarkup_setup.sh

if [ -d "$DROPBOX_DIRECTORY" ]; then
echo "This directory exists for use by https://github.com/bobgilmore/dotfiles

It contains directories and files that apps (such as Sublime Text and Vim)
constantly modify, and which therefore aren't really suited for
checking in to git.

This README.md was created by the github project's setup.sh script for
informational purposes.

See the github repo for more information.

20 September 2013, Bob Gilmore
" > "$DROPBOX_DIRECTORY/README.md"
fi
