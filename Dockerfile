FROM debian:10-slim

RUN apt-get update && apt-get install -y curl unzip

ENV ALP_VERSION=v1.0.4

RUN curl -sSOL https://github.com/tkuchiki/alp/releases/download/${ALP_VERSION}/alp_linux_amd64.zip && \
    unzip alp_linux_amd64.zip && \
    install ./alp /usr/local/bin && \
    rm -f alp_linux_amd64.zip alp

ENTRYPOINT ["alp"]



