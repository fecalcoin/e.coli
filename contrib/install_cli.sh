 #!/usr/bin/env bash

 # Execute this file to install the fecal cli tools into your path on OS X

 CURRENT_LOC="$( cd "$(dirname "$0")" ; pwd -P )"
 LOCATION=${CURRENT_LOC%fecal-Qt.app*}

 # Ensure that the directory to symlink to exists
 sudo mkdir -p /usr/local/bin

 # Create symlinks to the cli tools
 sudo ln -s ${LOCATION}/fecal-Qt.app/Contents/MacOS/fecald /usr/local/bin/fecald
 sudo ln -s ${LOCATION}/fecal-Qt.app/Contents/MacOS/fecal-cli /usr/local/bin/fecal-cli
