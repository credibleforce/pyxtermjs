FROM python:3.10-slim

RUN apt-get update \
    && apt-get install curl cowsay fortune -y \
    && rm -rf /var/lib/apt/lists/*

COPY . /app
COPY --chmod=755 entrypoint.sh /app
WORKDIR /app
EXPOSE 5000
RUN pip install -r requirements.txt
ENTRYPOINT ["/app/entrypoint.sh"]