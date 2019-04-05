#! /bin/bash

groupadd kusers
useradd -g users -G kusers myself
useradd -g users -G kusers myuser
useradd -g users -G kusers myoperator

cp /opt/docker/krb5.conf /etc/krb5.conf
cp /opt/docker/system-auth /etc/pam.d/system-auth
