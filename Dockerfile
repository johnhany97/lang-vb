FROM        mono:5.20.1.19
MAINTAINER  andystanton
ADD         image-common /tmp/dexec/image-common
VOLUME      /tmp/dexec/build
ENTRYPOINT  ["/tmp/dexec/image-common/dexec-mono-family.sh", "vbnc", "-out:"]
