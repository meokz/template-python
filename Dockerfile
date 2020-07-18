FROM python:3.7.7-slim

WORKDIR /mytmp

COPY requirements.txt requirements.txt

RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    curl \
    build-essential

RUN curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python \
    && poetry config virtualenvs.create false \
    && poetry install --no-root --no-dev

WORKDIR /home
