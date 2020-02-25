FROM python:3.7-alpine
LABEL maintainer="foullo@hotmail.com"

ENV PYTHONUNBUFFERED 1

# Setup directory structure

WORKDIR /usr/src/app


# Install dependencies
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

RUN adduser -D user
USER user