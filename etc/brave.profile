# Firejail profile for brave
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/brave.local
# Persistent global definitions
include /etc/firejail/globals.local

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc

mkdir ~/.config/brave
mkdir ~/.pki
whitelist ${DOWNLOADS}
whitelist ~/.config/KeePass
whitelist ~/.config/brave
whitelist ~/.config/keepass
whitelist ~/.config/lastpass
whitelist ~/.gnupg
whitelist ~/.keepass
whitelist ~/.lastpass
whitelist ~/.pki
include /etc/firejail/whitelist-common.inc

# caps.drop all
netfilter
# nonewprivs
# noroot
nodvd
notv
# protocol unix,inet,inet6,netlink
# seccomp

# disable-mnt
