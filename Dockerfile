FROM python:3.7-alpine
LABEL maintainer="foullo@hotmail.com"

ENV PYTHONUNBUFFERED 1

# Setup directory structure
RUN mkdir /app
WORKDIR /app
# Install dependencies
COPY requirements.txt /app/
RUN pip3 install -r requirements.txt
COPY . /app/
EXPOSE: 8000

RUN adduser -D user
USER user