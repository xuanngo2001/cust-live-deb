
#http://stackoverflow.com/questions/16758105/linux-find-list-all-graphic-image-files-with-find
find . -type f -exec file {} \; | grep -o -P '^.+: \w+ image'
