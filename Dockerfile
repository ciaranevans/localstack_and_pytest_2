FROM python:3.6-slim

RUN mkdir /build

COPY lambda /build

RUN pip3 install --upgrade pip && \
    pip3 install boto3 pytest

WORKDIR /build
