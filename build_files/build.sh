#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/39/x86_64/repoview/index.html&protocol=https&redirect=1

# dnf5 copr -y enable hhd-dev/hhd
# dnf5 install -y hhd adjustor hhd-ui
# dnf5 copr -y disable hhd-dev/hhd
# 
# dnf5 remove -y godot codium

dnf5 -y copr enable vdanielmo/git-credential-manager 
dnf5 -y install git-credential-manager
dnf5 -y copr disable vdanielmo/git-credential-manager

# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging

#### Example for enabling a System Unit File

systemctl enable podman.socket
