FROM        johnhany97/base-mono:1.1.0
MAINTAINER  johnhany97
ADD         image-common /tmp/dexec/image-common
VOLUME      /tmp/dexec/build
ENTRYPOINT  ["/tmp/dexec/image-common/dexec-mono-family.sh", "vbc", "-out:"]
