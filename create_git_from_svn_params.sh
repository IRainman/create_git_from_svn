
# The parameters of the original SVN server:

# SVN/HTTP(S) server URL:
export GIT_FROM_SVN_PARAMS_SVN_SERVER_PATH=https://solomin.sbt.lan/svn/Platform

# Name of local folder with Git repository:
export GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME=Platforma

# The structure of the original SVN repository.
# You need to write parameters without quotes.
# If you use the standard convention you must specify "-T trunk -b branches -t tags"
# or use the similar abbreviation "-s".
# If you use an alternative convention, you must specify the folders
# "-T trunk_folder -b branches_folder -t tags_folder".
# It is also possible that the SVN repository is no structure and the root is used as trunk,
# in which case the parameter must be set empty.
export GIT_FROM_SVN_PARAMS_STRUCTURE=

# Username for fetch data from SVN repository.
# User must have read permissions on the SVN repository.
export GIT_FROM_SVN_PARAMS_SVN_USERNAME=HedgehogInTheFog

# A file that contains the mapping of author names in SVN to author names in Git.
export GIT_FROM_SVN_PARAMS_AUTHORS=create_git_from_svn_authors.txt




# The parameters of the target Git server:

# Git/HTTP(S) server URL:
export GIT_FROM_SVN_PARAMS_GIT_SERVER_PATH=http://git.sbtcom.ru:3000/solomin/Platforma.git

# User name for push to Git repository:
export GIT_FROM_SVN_PARAMS_GIT_USER=solomin

# User Email for push to Git repository:
export GIT_FROM_SVN_PARAMS_GIT_USER_MAIL=solomin@sbtcom.ru
