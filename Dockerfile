FROM python:3.7.7-slim

WORKDIR /mytmp

COPY requirements.txt requirements.txt

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential

RUN pip install --upgrade pip setuptools \
    && pip install --no-cache-dir -r requirements.txt

WORKDIR /home
