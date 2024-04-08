#!/usr/bin/env bash

# Setup Environment for GitPod.io
echo "***** Setup Env for Gitpod.io *****"
sudo apt-get update
sudo apt-get install \
    bc jq openssl zstd \
    zip ccache sshpass \
    --no-install-recommends -y

sudo /usr/sbin/update-ccache-symlinks

# Setup repo
sudo curl --create-dirs -L -o /usr/local/bin/repo -O -L https://storage.googleapis.com/git-repo-downloads/repo
sudo chmod a+rx /usr/local/bin/repo

# Setup Git
. /workspace/scripts/setup/git_env

# Setup Barom
. /workspace/scripts/setup/barom_env.sh
