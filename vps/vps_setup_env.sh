#!/usr/bin/env bash

# Init timer
START=$(date +"%s")

# Indonesian Timezone
TZ=Asia/Jakarta
sudo ln -snf /usr/share/zoneinfo/$TZ /etc/localtime

# Git Config
git config --global user.name "Rafiester"
git config --global user.email "rafi.haqqi@gmail.com"

# Setup Environment
echo "***** Enviroment setup. *****"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install nano \
    sshpass llvm-* lld --no-install-recommends -y \
    autogen autotools-dev jq binutils xz-utils zstd \
    binutils-aarch64-linux-gnu binutils-arm-linux-gnueabi \
    bzip2 ca-certificates coreutils expect help2man lftp \
    libelf-dev libgomp1-* liblz4-tool libstdc++6 libtool-bin \
    m4 make openjdk-8-jdk openssh-client openssl ovmf pigz \
    python3 rsync shtool tar tzdata u-boot-tools wget
sleep 1

# Setup GitHub
. $HOME/scripts/global/git_env

# Setup for VPS/Server
git clone https://github.com/akhilnarang/scripts $HOME/akhil_scripts
. $HOME/akhil_scripts/setup/android_build_env.sh
sleep 1

# Setup Barom
. $HOME/scripts/global/barom_env
sleep 1

# Setup SSH
. $HOME/scripts/global/ssh_env

# End timer
END=$(date +"%s")
DIFF=$(($END - $START))

# Done.
echo -e "\n[${CLR_BLD_GRN}+${CLR_RST}] ${CLR_BLD_PPL}Finish in $(($DIFF / 60)) minute(s) and $(($DIFF % 60)) second(s).${CLR_RST}"

# unset all env var
unset START
unset END
unset DIFF
