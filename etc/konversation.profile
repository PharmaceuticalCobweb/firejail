# Firejail profile for konversation
# This file is overwritten after every install/update
# Persistent local customizations
include /etc/firejail/konversation.local
# Persistent global definitions
include /etc/firejail/globals.local


include /etc/firejail/disable-common.inc
include /etc/firejail/disable-devel.inc
include /etc/firejail/disable-passwdmgr.inc
include /etc/firejail/disable-programs.inc

caps.drop all
netfilter
nodvd
nogroups
nonewprivs
noroot
notv
novideo
protocol unix,inet,inet6
seccomp
tracelog

private-dev
private-tmp

# memory-deny-write-execute
noexec ${HOME}
noexec /tmp
