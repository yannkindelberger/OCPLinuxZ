FROM registry.access.redhat.com/ubi7/ubi
RUN yum  install podman -y
RUN yum install maven git -y