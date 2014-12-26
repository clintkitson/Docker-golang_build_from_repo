
FROM golang:1.4.0-wheezy
MAINTAINER EMCCODE

WORKDIR /output

ENTRYPOINT go get $REPO_PATH && go build $REPO_PATH



