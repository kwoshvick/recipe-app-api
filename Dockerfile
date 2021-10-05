FROM python:3.7-alpine
MAINTAINER KwoshVick

ENV PYTHONUNBUFFERD 1

COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache postgresql-client
RUN apk add --update --no-cache --virtial .tmp-build-deps gcc lib-dev linux-headers postgresql-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-dep

RUN mkdir /app
WORKDIR /app
COPY ./app /app

RUN adduser -D user
USER user
