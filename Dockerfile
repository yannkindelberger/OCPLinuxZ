FROM image-registry.openshift-image-registry.svc:5000/acme/podman
RUN yum install maven git -y
RUN mkdir acme-air
RUN cd acme-air
RUN git clone https://github.com/yigitpolat/acmeair-mainservice-java.git