FROM ubuntu:14.04
LABEL maintainer="Payal"
USER root
RUN apt-get -y --fix-missing update \
  && apt-get -y install --fix-missing --no-install-recommends \
     build-essential \
     python-dev \
     python-pip \
     python-setuptools \
  && pip install --upgrade pip\
  && pip install --upgrade setuptools \
  && pip install pytest \
  && pytest --version
