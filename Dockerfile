FROM ubuntu:16.10

#libxml2 is the only dependency we need
RUN apt-get update && apt-get install -y libxml2 && rm -rf /var/lib/apt/lists/*

#copy the binaries that were generated previously by the Build dockerfile
COPY bin/lib/* /usr/lib/
COPY bin/bin/* /usr/bin/

EXPOSE 60400

CMD rtig
