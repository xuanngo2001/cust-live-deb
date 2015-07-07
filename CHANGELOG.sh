# new: New
# changes: Existing functionalities where behavior is changed.
# fix: Issues that are fixed

TAG=$1
git log  ${TAG}.. --pretty=format:'%s' --reverse > CHANGELOG_v${TAG}