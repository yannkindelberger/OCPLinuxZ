FROM registry.access.redhat.com/ubi8/ubi
RUN subscription-manager register --username yannkindelberger@fr.ibm.com --password Yann2399!
RUN subscription-manager attach --auto
RUN yum install maven git -y
RUN yum module install container-tools -y