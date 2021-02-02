FROM registry.access.redhat.com/ubi8/ubi
RUN yum module enable -y container-tools
RUN yum  install podman -y
RUN yum install maven git -y