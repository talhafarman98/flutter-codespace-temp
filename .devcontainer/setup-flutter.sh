#!/usr/bin/env bash
set -e

# Install required tools
apt-get update
apt-get install -y curl git unzip xz-utils zip libglu1-mesa

# Download and clone Flutter
git clone https://github.com/flutter/flutter.git /home/codespace/flutter

# Add Flutter to PATH
echo 'export PATH="$HOME/flutter/bin:$PATH"' >> /home/codespace/.bashrc

# Optionally accept Android licenses (will prompt)
yes | /home/codespace/flutter/bin/flutter doctor --android-licenses || true

# Run flutter doctor to download dependencies
source /home/codespace/.bashrc
/home/codespace/flutter/bin/flutter doctor
