#!/bin/bash -ex

if [ ! -d "${ROOTFS_DIR}" ]; then
  # Previous stage rootfs not found
  # if before step0
  # bootstrap ${RELEASE} "${ROOTFS_DIR}" http://raspbian.raspberrypi.com/raspbian/

  copy_previous
fi
