#!bin/bash

# Initial Setup
function init_option() {
echo "Which one you want to install ?"
echo ""
echo "1. Gitpod.io"
echo "2. Cloud Server"
echo ""
echo "Write number only!"
read -s srv

if [ "$srv" == "1" ];
	then
		echo "Installing for Gitpod.io"
                . /workspace/scripts/gitpod/setup_env

elif [ "$srv" == "2" ];
	then

		echo "Installing for Private Cloud Server ?"
                . $HOME/scripts/vps/setup_env
fi
}



# Run
init_option
