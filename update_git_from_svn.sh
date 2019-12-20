
echo reading paramethers begin...

source create_git_from_svn_params.sh

echo reading paramethers end.

cd $GIT_FROM_SVN_PARAMS_LOCAL_PROJECT_FOLDER_NAME

echo ===============================================================================

git svn rebase

echo ===============================================================================

git svn create-ignore

echo ===============================================================================

git add --all

echo ===============================================================================

git commit -am "Added .gitignore from SVN ignore"

git svn dcommit

echo ===============================================================================

git push --set-upstream origin --all

git push --set-upstream origin --tags

echo ===============================================================================

echo svn externals in repo:

git svn show-externals

echo ===============================================================================

cd ..

