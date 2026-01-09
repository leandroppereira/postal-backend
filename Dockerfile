FROM ubi9-micro

MAINTAINER Red Hat Certification

LABEL component="postal" \
      name="rhce8/postal-parent" \
      version="1.0.1" \
      release="1"

LABEL io.k8s.description="Postal is an Go HTTP server" \
      io.k8s.display-name="postal 1.0.1" \
      io.openshift.expose-services="8080:http" \
      io.openshift.tags="postal"

ARG BUILDREPO=http://www.example.com/downloads/postal-1.0

WORKDIR /app

ADD --chmod=0755 ${BUILDREPO} /postal

EXPOSE 8080

ENTRYPOINT ["/app/postal"]

CMD ["--server"]