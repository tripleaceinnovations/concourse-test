#!/bin/sh

set -ex 

git clone my-rw-git-repo updated-gist

cd updated-gist
echo $(date) > bumpme

git config --global user.email "dexy004@gmail.com"
git config --global user.name "Dexy Adex"

git add .
git commit -m "Bumped date"