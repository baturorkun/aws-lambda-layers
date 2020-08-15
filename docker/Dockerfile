ARG VER
FROM $VER

ENV BUILD_DIR /builder
ENV BUILD_SCRIPT "$BUILD_DIR"/docker/build.sh

WORKDIR "$BUILD_DIR"
COPY . "$BUILD_DIR"

VOLUME "$BUILD_DIR"

RUN apk --no-cache add zip openssh py3-virtualenv gcc make  python3-dev musl-dev linux-headers libffi-dev openssl  postgresql-libs postgresql-dev

RUN pip3 install awscli

RUN pip3 install -r requirements.txt

RUN chmod 775 $BUILD_SCRIPT

ENTRYPOINT "$BUILD_SCRIPT"