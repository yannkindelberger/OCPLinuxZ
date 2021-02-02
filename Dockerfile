FROM image-registry.openshift-image-registry.svc:5000/acme/podman
RUN yum install maven git -y
RUN mkdir acme-air
RUN cd acme-air
RUN git clone https://github.com/yigitpolat/acmeair-mainservice-java.git
RUN cd acmeair-mainservice-java
ENTRYPOINT ls -alrt
# RUN mvn clean package
# RUN podman build -t image-registry.openshift-image-registry.svc:5000/acme/acmeair-mainservice-java:latest --format docker -f Dockerfile .
# RUN podman push image-registry.openshift-image-registry.svc:5000/acme/acmeair-mainservice-java:latest