# Install cloudflared
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared.deb
rm -rf cloudflared.deb log.txt


# Start cloudflared tunnel
sudo cloudflared service install eyJhIjoiYjM3MjBhOGFhMzU4YmY3NmFjZTE3MTg0ZGY0YmIwMmIiLCJ0IjoiZWYyMDY5OGItYjhmMS00MmQ3LTk2NmQtYzc1ZDQ1NmM1ZTgyIiwicyI6Ik5HUmhPVGswTm1FdE5UWXpOaTAwWXpZeUxUZ3lZVGd0Tm1VeFpUQmpZV0V3TkRGbSJ9
# Run the app
gunicorn app:app
