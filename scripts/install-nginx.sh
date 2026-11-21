#!/bin/bash
set -e

apt-get update
apt-get install -y nginx

cat > /var/www/html/index.html <<'HTML'
${page_content}
HTML

systemctl enable nginx
systemctl start nginx