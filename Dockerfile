FROM python:3.7-alpine
MAINTAINER Hama Amakaye

ENV PYTHONUNBUFFERED 1

# Install dependencies
ADD ./requirements.txt /requirements.txt

RUN pip3 install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
ADD ./app/ /app

RUN adduser -D user
USER user