FROM ubuntu:latest

COPY feed.py /usr/bin/feed.py

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

RUN apt-get update && apt-get install -y python3.10 git

RUN python3 --version  # This line checks if Python 3 is installed

RUN python3 -m pip install PyYAML