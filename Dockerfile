FROM registry.access.redhat.com/ubi8/ubi
RUN yum install maven git -y
RUN yum module install -y container-tools -y