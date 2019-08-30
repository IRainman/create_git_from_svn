@echo off

rem The parameters of the original SVN server:

rem SVN/HTTP(S) server URL:
set GIT_FROM_SVN_PARAMS_SVN_SERVER_PATH=https://solomin.sbt.lan/svn/Platform

rem Name of local folder with Git repository:
set GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME=Platforma

rem The structure of the original SVN repository.
rem You need to write parameters without quotes.
rem If you use the standard convention you must specify "-T trunk -b branches -t tags"
rem or use the similar abbreviation "-s".
rem If you use an alternative convention, you must specify the folders
rem "-T trunk_folder -b branches_folder -t tags_folder".
rem It is also possible that the SVN repository is no structure and the root is used as trunk,
rem in which case the parameter must be set empty.
set GIT_FROM_SVN_PARAMS_STRUCTURE=

rem Username for fetch data from SVN repository.
rem User must have read permissions on the SVN repository.
set GIT_FROM_SVN_PARAMS_SVN_USERNAME=HedgehogInTheFog

rem A file that contains the mapping of author names in SVN to author names in Git.
set GIT_FROM_SVN_PARAMS_AUTHORS=create_git_from_svn_authors.txt




rem The parameters of the target Git server:

rem Git/HTTP(S) server URL:
set GIT_FROM_SVN_PARAMS_GIT_SERVER_PATH=http://git.sbtcom.ru:3000/solomin/Platforma.git

rem User name for push to Git repository:
set GIT_FROM_SVN_PARAMS_GIT_USER=solomin

rem User Email for push to Git repository:
set GIT_FROM_SVN_PARAMS_GIT_USER_MAIL=solomin@sbtcom.ru
