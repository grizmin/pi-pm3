#!/bin/bash -ex

# GPG error: bookworm InRelease: The following signatures couldn't be verified
# because the public key is not available
# E: The repository 'http://deb.debian.org/debian bookworm-updates InRelease' is not signed.
# E: The repository 'http://deb.debian.org/debian-security bookworm-security InRelease' is not signed.
for key in 6ED0E7B82643E131 78DBA3BC47EF2265 F8D2585B8783D481 54404762BBB6E853 BDE6D2B9216EC7A8; do
  gpg --keyserver keyserver.ubuntu.com --recv-keys $key
  gpg --export --armor $key | sudo tee /etc/apt/trusted.gpg.d/$key.asc
  # gpg --export --armor $key > /tmp/$key.asc
  # sudo install -m 644 /tmp/$key.asc /etc/apt/trusted.gpg.d/
done
