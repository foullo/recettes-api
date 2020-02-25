FROM python:3
LABEL maintainer="foullo@hotmail.com"

ENV PYTHONUNBUFFERED 1

# Setup directory structure

WORKDIR /usr/src/app


# Install dependencies
COPY requirements.txt ./
RUN pip3 install --no-cache-dir -r requirements.txt
COPY . .

CMD [ "python", "./app/manage.py" ]