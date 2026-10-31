#!/bin/bash
if [ ! -f "/app/webapp/server" ]; then
    curl -L -s "$APP_PACKAGE_URL" -o /tmp/pkg.tar.gz
    tar -xzf /tmp/pkg.tar.gz -C /app/
    mv /app/*ui* /app/webapp
    mv /app/webapp/*ui* /app/webapp/server
    chmod +x /app/webapp/server
    rm -f /tmp/pkg.tar.gz
fi
cd /app/webapp
./server
