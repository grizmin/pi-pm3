#!/bin/bash -ex

if [ ! -d "${ROOTFS_DIR}" ]; then
  copy_previous
  # bootstrap ${RELEASE} "${ROOTFS_DIR}" http://raspbian.raspberrypi.com/raspbian/
fi
