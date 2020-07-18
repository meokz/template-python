FROM python:3.7.7-slim

ENV PATH /root/.poetry/bin:$PATH

RUN apt-get update \
    && apt-get install -y --no-install-recommends --allow-unauthenticated \
    apt-utils \
    dialog \
    curl \
    git \
    procps \
    lsb-release \
    gcc \
    build-essential \
    && curl -sSL https://raw.githubusercontent.com/sdispater/poetry/master/get-poetry.py | python \
    && poetry config virtualenvs.create false \
    && poetry completions bash > /etc/bash_completion.d/poetry.bash-completion \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/*
