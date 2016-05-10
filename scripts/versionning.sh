#!/bin/bash

version_file=$1
output_file=$(dirname "$1")/version.md

if [[ -n "$version_file" ]]; then
	intro=`cat $version_file`
    echo "$intro" > $output_file
else
    echo "argument error, you must specify a file."
fi

lastdate=$(git show -s --format=%ad `git rev-list --tags --max-count=1`)
changelog=$(git log --pretty=format:"- %s%n%b" --since="$(git show -s --format=%ad `git rev-list --tags --max-count=1`)")
version=$(git describe --abbrev=0 --tags)
gitrev=$(git rev-list -1 $version)

# add latest changes
echo >> $output_file
echo "## Latest changes" >> $output_file
echo >> $output_file
echo "$changelog" >> $output_file
echo >> $output_file

# add version information
echo "## Version information" >> $output_file
echo >> $output_file
echo "* Version number: $version" >> $output_file
echo "* Release date: $lastdate" >> $output_file
echo "* Git revision: $gitrev" >> $output_file
echo >> $output_file
