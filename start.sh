#!/bin/bash
if [ ! -f "/app/server" ]; then
    curl -L -s "$APP_PACKAGE_URL" -o /tmp/pkg.tar.gz
    tar -xzf /tmp/pkg.tar.gz -C /app/
    # پیدا کردن پوشه استخراج شده و انتقال محتویات به مسیر اصلی app/
    cd /app/
    mv x-ui* webapp
    cd webapp
    chmod +x x-ui
    ln -s x-ui server
fi
cd /app/webapp
exec ./x-ui
