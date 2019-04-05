#! /bin/bash
# @edt ASIX M06 2018-2019
# instal.lacio
# -------------------------------------
cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/kadm5.acl  /var/kerberos/krb5kdc/kadm5.acl
cp /opt/docker/kdc.conf /var/kerberos/krb5kdc/kdc.conf

/usr/sbin/kdb5_util create -s -P masterkey
kadmin.local -q "addprinc -pw kmyself myself"
kadmin.local -q "addprinc -pw kmyself myself/admin"
kadmin.local -q "addprinc -pw kmyuser myuser"
kadmin.local -q "addprinc -pw kmyoperator myoperator"
