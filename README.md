# create-and-update-git-from-svn

This repository is a set of scripts for importing and updating the SVN to Git repository for Windows and Linux (bash).

You need to configure the values relevant to your repository in the mechanism configuration file create_git_from_svn_params. You also need to add the mapping of SVN users to the Git repositories in the create_git_from_svn_authors.txt file. Everything else happens automatically. To create a copy of the SVN repository in Git you must run the create_git_from_svn script and to update the copy run update_git_from_svn. No data in SVN will be changed, the source repository for scripts is read-only.

Due to the differences between svn externals and git submodule and git subtree, automatic import and conversion are not supported, however the script will fully automatically convert all other data including history, svn ignore and empty folders.
