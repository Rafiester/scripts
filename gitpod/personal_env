#!/bin/bash

# Setup Environment
WORKSPACE=$(pwd)
TC=${WORKSPACE}/../tools

# Setup Clang
function init_clang() {
echo "Which clang environmnet you want to use ?"
echo ""
echo "1. Dora Clang 17.0.0"
echo "2. Proton Clang 13.0.0"
echo "3. Google Clang 18.0.0"
echo ""
echo "Write number only!"
read -s decision

if [ "$decision" == "1" ];
	then
		echo "Cloning Dora Clang"
		clone_dora
elif [ "$decision" == "2" ];
	then

                echo "Cloning Proton Clang"
		clone_proton
elif [ "$decision" == "3" ];
        then

                echo "Cloning Google Clang & GCC Baremetal"
                clone_gccclang
fi
}

# Setup Dora Clang
function clone_dora() {
if [[ ! -d $TC/clang ]]; then
  git clone  --depth=1 --single-branch https://gitlab.com/zlatanr/dora-clang-1 ${TC}/clang
fi
}

# Setup Proton Clang
function clone_proton() {
if [[ ! -d $TC/clang ]]; then
  git clone --depth=1 --single-branch https://github.com/kdrag0n/proton-clang ${TC}/clang
fi
}

# Setup Google Clang + Baremetal GCC
function clone_gccclang() {
if [[ ! -d $TC/clang || ! -d $TC/gcc64 || ! -d $TC/gcc32 ]]; then
  mkdir ${TC}/clang
  wget https://android.googlesource.com/platform/prebuilts/clang/host/linux-x86/+archive/refs/heads/main/clang-r510928.tar.gz
  mv clang-r510928.tar.gz ${TC}/clang && cd ${TC}/clang && tar -xvf clang-r510928.tar.gz && cd ../..

  git clone https://github.com/mvaisakh/gcc-arm64 --depth=1 --no-tags --single-branch ${TC}/gcc64
  git clone https://github.com/mvaisakh/gcc-arm --depth=1 --no-tags --single-branch ${TC}/gcc32
fi
}

# Setup AnyKernel
function init_anykernel() {
if [[ ! -d AnyKernel ]]; then
    git clone  --no-tags --single-branch https://github.com/Rafiester/AnyKernel3 -b vayu AnyKernel
fi
}

# Run
init_clang
init_anykernel
