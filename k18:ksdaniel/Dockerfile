# Version: 0.0.1
# @edt M06 2018-2019
# kerberos
# -------------------------------------
FROM fedora:27
LABEL author="@edt ASIX M06-ASO"
LABEL description="kerberos 2018-2019"
RUN dnf -y install procps vim krb5-server krb5-libs tree
#krb5-workstation no fa falta al servidor
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/install.sh /opt/docker/startup.sh
WORKDIR /opt/docker
CMD ["/opt/docker/startup.sh"]
