# auto-epp-sh
A daemon that adjusts the energy performance preferences of "amd-pstate-epp" based on the power source status (rewrite of [auto-epp](https://github.com/jothi-prasath/auto-epp/) in POSIX sh)

## Quick Install

To quickly install auto-epp, just copy and paste this to your terminal (if you have curl installed):
```bash
curl https://raw.githubusercontent.com/misile00/auto-epp-sh/master/quick-install.sh | sudo sh
```

Note: This script modifies the file to use `dash` if it is present on the system.

## Usage

Monitor the service status
```bash
systemctl status auto-epp-sh
```

To restart the service
```bash
sudo systemctl restart auto-epp-sh
```

Edit the config file
```bash
sudo nano /etc/auto-epp.conf
```
