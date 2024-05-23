# Stage 1: Build environment

FROM python:3.10-slim-buster AS builder

RUN apt-get update && apt-get install -y git

# Install dependencies for building the application
RUN python3 -m pip install --upgrade pip  # Upgrade pip to ensure latest version
RUN python3 -m pip install PyYAML        # Install PyYAML dependency

# Stage 2: Copy application and entrypoint

FROM ubuntu:latest

COPY --from=builder /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
