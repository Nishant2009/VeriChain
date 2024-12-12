# Start cloudflared tunnel
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb && 

sudo dpkg -i cloudflared.deb && 

sudo cloudflared service install eyJhIjoiYjM3MjBhOGFhMzU4YmY3NmFjZTE3MTg0ZGY0YmIwMmIiLCJ0IjoiMzNmYTc1Y2EtNDM3ZS00MjFiLTlmZjYtMTJhMTBhZjc2YzUxIiwicyI6IllUYzJNbVV6T1RndFlUSTFOaTAwWlRabExUaGlOR010WW1WaU5UZGxabUZqT0dJeSJ9

# Run the app
gunicorn app:app
