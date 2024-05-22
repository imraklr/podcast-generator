FROM ubuntu:latest

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN apt-get update && apt-get install -y python3.10 git

RUN py -m pip install PyYAML