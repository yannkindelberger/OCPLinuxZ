FROM image-registry.openshift-image-registry.svc:5000/acme/podman
RUN yum install maven git -y