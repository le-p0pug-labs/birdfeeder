FROM python:3.11.0a7-bullseye

ARG VERSION
ENV PARROT_FEEDER_VERSION="$VERSION"

ENV PARROT_FEEDER_HOME="/parrot-feeder"

RUN mkdir "$PARROT_FEEDER_HOME" && \
    pip3 install --upgrade build

COPY LICENSE "$PARROT_FEEDER_HOME"
COPY pyproject.toml "$PARROT_FEEDER_HOME"
COPY README.md "$PARROT_FEEDER_HOME"
COPY requirements.txt "$PARROT_FEEDER_HOME"

COPY setup.py "$PARROT_FEEDER_HOME"
COPY src "$PARROT_FEEDER_HOME/src"

WORKDIR "$PARROT_FEEDER_HOME"
RUN python3 -m build --sdist --wheel --outdir dist


