FROM ubuntu:22.04
RUN apt-get update && apt-get install -y curl tar ca-certificates tzdata && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh
EXPOSE 2053
CMD ["/app/start.sh"]
