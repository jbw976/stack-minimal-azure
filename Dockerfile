FROM alpine:3.7
WORKDIR /
COPY kustomize /kustomize
COPY .registry /.registry

USER 1001
# This container is meant to be used as CSI storage rather than a processing unit.
ENTRYPOINT ["find", "/kustomize"]