auditctl -w /etc/passwd -p wa -k passwd_changes
auditctl -w /etc/selinux/ -p wa -k selinux_changes
auditctl -w /sbin/insmod -p x -k module_insertion
auditctl -w /etc/ssh/sshd_config -p warx -k sshd_config
auditctl -w /etc/localtime -p wa -k audit_time_rules
auditctl -w /etc/group -p wa -k audit_rules_usergroup_modification
auditctl -w /etc/passwd -p wa -k audit_rules_usergroup_modification
auditctl -w /etc/gshadow -p wa -k audit_rules_usergroup_modification
auditctl -w /etc/shadow -p wa -k audit_rules_usergroup_modification
auditctl -w /etc/security/opasswd -p wa -k audit_rules_usergroup_modification
auditctl -w /etc/issue -p wa -k audit_rules_networkconfig_modification
auditctl -w /etc/issue.net -p wa -k audit_rules_networkconfig_modification
auditctl -w /etc/hosts -p wa -k audit_rules_networkconfig_modification
auditctl -w /etc/sysconfig/network -p wa -k audit_rules_networkconfig_modification
auditctl -w /etc/selinux/ -p wa -k MAC-policy
auditctl -w /var/log/tallylog -p wa -k logins
auditctl -w /var/run/faillock/ -p wa -k logins
auditctl -w /var/log/lastlog -p wa -k logins
auditctl -w /var/run/utmp -p wa -k session
auditctl -w /var/log/btmp -p wa -k session
auditctl -w /var/log/wtmp -p wa -k session
auditctl -w /usr/sbin/insmod -p x -k modules
auditctl -w /usr/sbin/rmmod -p x -k modules
auditctl -w /usr/sbin/modprobe -p x -k modules
auditctl -w /etc/sudoers -p wa -k actions
auditctl -a always,exit -F arch=b64 -S execve -F path=/bin/sh
auditctl -a always,exit -F arch=b64 -S execve -F path=/bin/bash 
auditctl -a always,exit -F arch=b64 -S execve -F path=/sbin/nologin
auditctl -a always,exit -F arch=b64 -S execve -F path=/usr/bin/sh
auditctl -a always,exit -F arch=b64 -S execve -F path=/usr/bin/bash
auditctl -a always,exit -F arch=b64 -S execve -F path=/usr/sbin/nologin
auditctl -a always,exit -F arch=b64 -S execve -F path=/bin/tcsh
auditctl -a always,exit -F arch=b64 -S execve -F path=/bin/csh
auditctl -a always,exit -F arch=b64 -S adjtimex -k audit_time_rules
auditctl -a always,exit -F arch=b64 -S settimeofday -k audit_time_rules
auditctl -a always,exit -F arch=b64 -S adjtimex -S settimeofday -k audit_time_rules
auditctl -a always,exit -F arch=b64 -S clock_settime -F a0=0x0 -F key=time-change
auditctl -a always,exit -F arch=b64 -S chmod -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S chown -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S fchmod -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S fchmodat -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S fchown -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S fchownat -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S fremovexattr -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S fsetxattr -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S lchown -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S lremovexattr -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S lsetxattr -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S removexattr -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S setxattr -F auid!=4294967295 -k perm_mod
auditctl -a always,exit -F arch=b64 -S sethostname -S setdomainname -k audit_rules_networkconfig_modification
auditctl -a always,exit -F arch=b64 -S mount -F auid!=4294967295 -k export
auditctl -a always,exit -F arch=b64 -S init_module -S delete_module -k modules
auditctl -a always,exit -F arch=b64 -S creat -S open -S openat -S open_by_handle_at -S truncate -S ftruncate -F exit=-EACCES  -F auid!=4294967295 -k access
auditctl -a always,exit -F arch=b64 -S creat -S open -S openat -S open_by_handle_at -S truncate -S ftruncate -F exit=-EPERM  -F auid!=4294967295 -k access
auditctl -a always,exit -F arch=ARCH -S rmdir -S unlink -S unlinkat -S rename -S renameat  -F auid!=4294967295 -k delete
