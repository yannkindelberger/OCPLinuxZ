FROM image-registry.openshift-image-registry.svc:5000/acme/maven
RUN yum install git java wget -y
RUN wget https://downloads.apache.org/maven/maven-3/3.6.3/binaries/apache-maven-3.6.3-bin.tar.gz
RUN tar xvf apache-maven-3.6.3-bin.tar.gz
RUN export PATH="/apache-maven-3.6.3/bin:$PATH"
RUN mkdir acme-air && cd acme-air && git clone https://github.com/yannkindelberger/acmeair-mainservice-java.git && cd acmeair-mainservice-java && mvn clean package
RUN su build && podman build -t image-registry.openshift-image-registry.svc:5000/acme/acmeair-mainservice-java:latest --format docker -f Dockerfile .
# RUN podman push image-registry.openshift-image-registry.svc:5000/acme/acmeair-mainservice-java:latest