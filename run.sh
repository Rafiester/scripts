#!bin/bash

# Initial Setup
function init_option() {
echo "Which one you want to install ?"
echo ""
echo "1. Gitpod.io"
echo "2. Cloud Server"
echo ""
echo "Write number only!"
read -s choice

if [ "$choice" == "1" ];
	then
		echo "Installing for Gitpod.io"
                . /workspace/scripts/gitpod/gitpod_setup_env

elif [ "$choice" == "2" ];
	then

		echo "Installing for Private Cloud Server ?"
                . $HOME/scripts/vps/vps_setup_env.sh
fi
}

# Run
init_option
