#!/bin/bash

set -ex

git clone --depth=1 --branch="$VERSION" https://github.com/python/cpython cpython
git clone --branch="$VERSION" https://github.com/"$GITHUB_REPOSITORY" docs

pip3 install --user setuptools
curl -o- https://raw.githubusercontent.com/transifex/cli/master/install.sh | bash
sudo apt-get update
sudo apt-get install -y python3-venv
