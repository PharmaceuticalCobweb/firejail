# Firejail profile for chromium
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/chromium.local
# Persistent global definitions
include /etc/firejail/globals.local

include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc

mkdir ~/.cache/chromium
mkdir ~/.config/chromium
mkdir ~/.pki
whitelist ${DOWNLOADS}
whitelist ~/.cache/chromium
whitelist ~/.config/chromium
whitelist ~/.config/chromium-flags.conf
whitelist ~/.pki
include /etc/firejail/whitelist-common.inc
include /etc/firejail/whitelist-var-common.inc

caps.keep sys_chroot,sys_admin
netfilter
nodvd
nogroups
notv
shell none

# private-bin chromium,chromium-browser,chromedriver
private-dev
# private-tmp - problems with multiple browser sessions

noexec ${HOME}
noexec /tmp
