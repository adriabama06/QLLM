FROM nvcr.io/nvidia/pytorch:22.12-py3

RUN pip install https://github.com/wejoncy/QLLM/releases/download/v0.2.0/qllm-0.2.0+cu1180-cp38-cp38-manylinux2014_x86_64.whl
RUN pip install flash-attn

RUN mkdir -p /data && cd /data

WORKDIR /data

COPY . /data/

RUN mkdir -p /output

ENTRYPOINT [ "python", "-m", "qllm" ]