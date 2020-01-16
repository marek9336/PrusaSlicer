FROM scratch

RUN apk update
RUN apk cmake
RUN apk make
