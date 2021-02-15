FROM registry.redhat.io/rhel8/podman
RUN yum install git java wget java-1.8.0-openjdk-devel.s390x -y
RUN wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar xvf apache-maven-3.6.3-bin.tar.gz
RUN export PATH="/apache-maven-3.6.3/bin:$PATH" && mkdir acme-air && cd acme-air && git clone https://github.com/yannkindelberger/acmeair-mainservice-java.git && cd acmeair-mainservice-java && mvn clean package
RUN su - build && cd /acme-air/acmeair-mainservice-java
RUN podman build --tls-verify=false -t quay.io/yannkindelberger/acmeair-mainservice-java:latest --format docker -f Dockerfile .
# RUN podman push quay.io/yannkindelberger/acmeair-mainservice-java:latest
