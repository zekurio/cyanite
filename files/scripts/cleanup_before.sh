#!/usr/bin/bash

set -ouex pipefail

# cleanup 1password opt files before installing
rm -rf /usr/lib/opt/1Password
rm -rf /opt/1Password

# cleanup zen browser opt files before installing
rm -rf /usr/lib/opt/zen
rm -rf /opt/zen