# Install cloudflared
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared.deb
cloudflared update

ls -a

cloudflared tunnel --url 127.0.0.1:8080 --logfile cloudflared_log.txt >/dev/null 2>&1 &


# wait 5 seconds for cloudflared to start and get the URL
sleep 10
cat cloudflared_log.txt | grep -o 'https://[-0-9a-z]*\.trycloudflare.com'

# Start cloudflared tunnel
sudo cloudflared service install eyJhIjoiYjM3MjBhOGFhMzU4YmY3NmFjZTE3MTg0ZGY0YmIwMmIiLCJ0IjoiZWYyMDY5OGItYjhmMS00MmQ3LTk2NmQtYzc1ZDQ1NmM1ZTgyIiwicyI6IlpHTTBPVGd5TVRJdFlUWTBOaTAwWlRjNUxXRTNZbU10WVRKbVpEWmlZekl5TlROaiJ9

# Run the app
gunicorn app:app
