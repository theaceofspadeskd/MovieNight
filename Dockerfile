FROM python:3.11-alpine
ENV PYTHONUNBUFFERED 1
RUN apk add --update --no-cache postgresql-client jpeg-dev
COPY ./requirements.txt /requirements.txt
RUN apk add --update --no-cache --virtual .tmp-build-deps \ 
    gcc libc-dev linux-headers postgresql-dev musl-dev zlib zlib-dev
RUN pip install -r /requirements.txt
RUN apk del .tmp-build-deps
COPY ./movienight /movienight
WORKDIR /movienight


