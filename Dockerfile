FROM ubuntu:20.04

RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip

RUN pip3 install enviro_prometheus_exporter


CMD python3 enviroplus-exporter --bind=0.0.0.0 --port=8000
