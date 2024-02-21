#!/usr/bin/env bash

# Setup Environment for GitPod.io
echo "***** Setup Env for Gitpod.io *****"
sudo apt-get update
sudo apt-get install \
    bc jq openssl zstd \
    zip ccache sshpass \
    --no-install-recommends -y

sudo /usr/sbin/update-ccache-symlinks 
		     
# Setup Git
. /workspace/scripts/global/git_env

# Setup Barom
. /workspace/scripts/global/barom_env
