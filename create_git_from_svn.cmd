@echo off

set GIT_FROM_SVN_PARAMS_SCRIPT_PATH=%~dp0
cd /D "%GIT_FROM_SVN_PARAMS_SCRIPT_PATH%"

echo ===============================================================================

echo Please consider that you will have to convert all svn externals
echo to git submodules or configure git subtree merges yourself!
echo The script does not automate these actions!

echo ===============================================================================

echo cloning from SVN started... 

echo reading paramethers begin...

call create_git_from_svn_params

if not exist %GIT_FROM_SVN_PARAMS_AUTHORS% (
	echo Error: The file %GIT_FROM_SVN_PARAMS_AUTHORS% is not exist.
	pause
	exit /b 1
)

echo reading paramethers end.

echo ===============================================================================

git svn clone %GIT_FROM_SVN_PARAMS_SVN_SERVER_PATH% --authors-file=%GIT_FROM_SVN_PARAMS_AUTHORS% --username %GIT_FROM_SVN_PARAMS_SVN_USERNAME% %GIT_FROM_SVN_PARAMS_STRUCTURE% %GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME% --preserve-empty-dirs --placeholder-filename=.gitkeep

echo ===============================================================================

cd %GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME%

git remote add origin %GIT_FROM_SVN_PARAMS_GIT_SERVER_PATH%

git config user.name "%GIT_FROM_SVN_PARAMS_GIT_USER%"

git config user.email "%GIT_FROM_SVN_PARAMS_GIT_USER_MAIL%"

cd /D "%GIT_FROM_SVN_PARAMS_SCRIPT_PATH%"

echo ===============================================================================

call update_git_from_svn

echo ===============================================================================

echo Please MANUALLY convert all svn externals to git submodules
echo or use git subtree merges.
echo Study these possibilities by yourself!

echo ===============================================================================

