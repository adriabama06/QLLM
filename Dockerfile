FROM python:3.11-bookworm

RUN pip install https://github.com/wejoncy/QLLM/releases/download/v0.2.0/qllm-0.2.0+cu1180-cp311-cp311-manylinux2014_x86_64.whl

RUN mkdir -p /data && cd /data

WORKDIR /data

COPY . /data/

RUN mkdir -p /output

ENTRYPOINT [ "python", "-m", "qllm" ]