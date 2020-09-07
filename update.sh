#!/usr/bin/env sh

DIR=$(dirname "$0")
cd $DIR

echo "Updating submodules in $DIR"

git submodule update --rebase --remote
