FROM python:3.7-alpine
ENV PYTHONUNBUFFERED 1
RUN mkdir /sickat
WORKDIR /sickat
COPY requirements.txt /sickat/
RUN pip install -r requirements.txt
COPY . /sickat/

RUN adduser -D user
USER user
