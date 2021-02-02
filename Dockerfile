FROM registry.access.redhat.com/rhel7
RUN yum  install podman -y
RUN yum install maven git -y