FROM fedora:27
LABEL version="1.0"
LABEL author="WalidElHarrak"
LABEL subject="hello-world"
RUN dnf install -y httpd
RUN mkdir /opt/docker
COPY * /opt/docker/
RUN chmod +x /opt/docker/startup.sh
WORKDIR /opt/docker
EXPOSE 80
CMD /opt/docker/startup.sh
