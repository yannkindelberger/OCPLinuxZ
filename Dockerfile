FROM registry.access.redhat.com/ubi7/ubi
RUN subscription-manager repos --enable=rhel-7-server-extras-rpms
RUN yum  install podman -y
RUN yum install maven git -y