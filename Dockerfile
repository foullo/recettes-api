FROM python:3.7-alpine
MAINTAINER Hama Amakaye

ENV PYTHONUNBUFFERED 1

# Install dependencies
ADD ./requirements.txt /app/

RUN pip install -r /requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
ADD . /app/

RUN adduser -D user
USER user