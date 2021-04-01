FROM python:3.9.2-alpine
MAINTAINER Reza Mohammadzadeh

ENV PYTHONNUNBUFFERED 1

COPY ./requirements.txt /requirements.txt
RUN pip install -r /requirements.txt

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
