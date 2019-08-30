# create-and-update-git-from-svn

This repository is a set of scripts for importing and updating the SVN to Git repository for Windows and Linux (bash).

Due to the differences between svn externals and git submodule (subtree), automatic import and conversion are not supported, however the script will fully automatically convert all other data including history, svn ignore and empty folders.