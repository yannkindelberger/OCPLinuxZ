cd /acme-air/acmeair-mainservice-java
podman build -t quay.io/abdouibm/acme-mainservice:latest --format docker -f Dockerfile .
podman push quay.io/abdouibm/acme-mainservice:latest
cd /acme-air/acmeair-bookingservice-java
podman build -t quay.io/abdouibm/acme-bookingservice:latest --format docker -f Dockerfile .
podman push quay.io/abdouibm/acme-bookingservice:latest
cd /acme-air/acmeair-authservice-java
podman build -t quay.io/abdouibm/acme-authservice:latest --format docker -f Dockerfile .
podman push quay.io/abdouibm/acme-authservice:latest
cd /acme-air/acmeair-customerservice-java
podman build -t quay.io/abdouibm/acme-customerservice:latest --format docker -f Dockerfile .
podman push quay.io/abdouibm/acme-customerservice:latest
cd /acme-air/acmeair-flightservice-java
podman build -t quay.io/abdouibm/acme-flightservice:latest --format docker -f Dockerfile .
podman push quay.io/abdouibm/acme-flightservice:latest