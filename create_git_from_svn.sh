
echo ===============================================================================

echo Please consider that you will have to convert all svn externals
echo to git submodules or configure git subtree merges yourself!
echo The script does not automate these actions!

echo ===============================================================================

echo cloning from SVN started... 

echo reading paramethers begin...

source create_git_from_svn_params.sh

echo reading paramethers end.

echo ===============================================================================

git svn clone $GIT_FROM_SVN_PARAMS_SVN_SERVER_PATH --authors-file=$GIT_FROM_SVN_PARAMS_AUTHORS --username $GIT_FROM_SVN_PARAMS_SVN_USERNAME $GIT_FROM_SVN_PARAMS_STRUCTURE $GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME --preserve-empty-dirs --placeholder-filename=.gitkeep

echo ===============================================================================

cd $GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME

git remote add origin $GIT_FROM_SVN_PARAMS_GIT_SERVER_PATH

git config user.name "$GIT_FROM_SVN_PARAMS_GIT_USER"

git config user.email "$GIT_FROM_SVN_PARAMS_GIT_USER_MAIL"

cd ..

echo ===============================================================================

./update_git_from_svn.sh start

echo ===============================================================================

echo Please MANUALLY convert all svn externals to git submodules
echo or use git subtree merges.
echo Study these possibilities by yourself!

echo ===============================================================================

