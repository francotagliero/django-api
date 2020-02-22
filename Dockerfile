FROM python:3.7-alpine
MAINTAINER Franco Tagliero

ENV PYTHONUNBUFFERED 1

COPY ./requiriments.txt /requiriments.txt
RUN pip install -r /requiriments.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user