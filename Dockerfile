FROM ubuntu:18.04
LABEL maintainer="Payal"
USER root
RUN apt-get -y --fix-missing update \
  && apt-get -y install --fix-missing --no-install-recommends \
     build-essential \
     python-dev \
     python-pip \
     python-setuptools \
  && pip install --upgrade pip
 FROM python:3.7-alpine
 RUN pip install pytest \
  && pytest --version
