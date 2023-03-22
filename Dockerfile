FROM ubuntu:22.04

RUN apt-get update \
    && apt-get install -y python3-pip python3-dev libpq-dev\
    && cd /usr/local/bin \
    && ln -s /usr/bin/python3 python \
    && pip3 install --upgrade pip

RUN mkdir /code
WORKDIR /code
COPY requirements.txt /code/
RUN pip install -r requirements.txt