FROM ubuntu:18.04
ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update -q && \
    apt-get install -qy --no-install-recommends \
    curl jq \
    texlive-latex-base \
    texlive-latex-extra \
    texlive-fonts-recommended \
    python-pygments gnuplot \
    make git \
    && apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

WORKDIR /data
VOLUME ["/data"]
