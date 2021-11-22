#! /bin/bash
# Per crear el directori -m Per cambiar el shell -s
useradd -m -s /bin/bash unix01
useradd -m -s /bin/bash unix02
useradd -m -s /bin/bash unix03
echo -e "unix01\nunix01" | passwd unix01
echo -e "unix02\nunix02" | passwd unix02
echo -e "unix03\nunix03" | passwd unix03

cp /opt/docker/login.defs /etc/login.defs
cp /opt/docker/common-auth /etc/pam.d/common-auth
cp /opt/docker/common-account /etc/pam.d/common-account
cp /opt/docker/common-session /etc/pam.d/common-session
cp /opt/docker/common-passwd /etc/pam.d/common-passwd
cp /opt/docker/nslcd.conf /etc/nslcd.conf
cp /opt/docker/nscd.conf /etc/nscd.conf
cp /opt/docker/nsswitch.conf /etc/nsswitch.conf

/usr/sbin/nslcd
/usr/sbin/nscd
