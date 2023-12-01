#!/bin/sh

# Check if the script is running as root
if [ "$(id -u)" -ne 0 ]; then
    echo "This script must be run with root privileges."
    exit 1
fi

# Check curl if exist
if [ -d /usr/bin/curl ]; then
    echo "curl is not installed. Please install it before running this script."
fi

# Download the files
curl -o /usr/local/bin/auto-epp-sh https://raw.githubusercontent.com/misile00/auto-epp-sh/auto-epp-sh
curl -o /etc/systemd/system/auto-epp-sh.service https://raw.githubusercontent.com/misile00/auto-epp-sh/main/auto-epp-sh.service

# Modify the file to use dash if it is present on the system
sed -i s@/bin/sh@/bin/dash@g /usr/local/bin/auto-epp-sh

# Give execute permission to the script
chmod +x /usr/local/bin/auto-epp-sh

# Start and enable the service
systemctl start auto-epp-sh
systemctl enable auto-epp-sh
