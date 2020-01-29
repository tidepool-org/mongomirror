FROM debian:8
ADD https://tidepool-public-images.s3-us-west-2.amazonaws.com/mongomirror-linux-x86_64-debian81-0.9.1.tgz /mongomirror.tgz
WORKDIR /mongomirror
RUN tar xzf /mongomirror.tgz -C /mongomirror --strip-components=1
RUN apt-get update && apt-get install -y libssl-dev libsasl2-dev ca-certificates
CMD ["--help"]
ENTRYPOINT ["/mongomirror/bin/mongomirror"]
