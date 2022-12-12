# FROM dodasts/cygno-lab:<latest release> -> for example:
# FROM dodasts/cygno-lab:v1.0.16-cygno
FROM gmazzitelli/cygno-lab:v1.0.17-cygno

RUN yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo

RUN yum -y install docker-ce docker-ce-cli containerd.io docker-compose-plugin
RUN usermod -aG /usr/bin/dockerd root
RUN /usr/bin/dockerd
#RUN chmod 777 /var/run/docker.sock
