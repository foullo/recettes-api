FROM python:3.7-alpine
LABEL maintainer="foullo@hotmail.com"

ENV PYTHONUNBUFFERED 1

# Install dependencies
COPY requirements.txt requirements.txt

RUN pip3 install -r requirements.txt

# Setup directory structure
RUN mkdir /app
WORKDIR /app
COPY ./app/ /app

RUN adduser -D user
USER user