# Install cloudflared
curl -L --output cloudflared.deb https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb
sudo dpkg -i cloudflared.deb
rm -rf cloudflared.deb log.txt

# Start cloudflared tunnel
sudo cloudflared service install eyJhIjoiYjM3MjBhOGFhMzU4YmY3NmFjZTE3MTg0ZGY0YmIwMmIiLCJ0IjoiMzNmYTc1Y2EtNDM3ZS00MjFiLTlmZjYtMTJhMTBhZjc2YzUxIiwicyI6Ik16UTRZVGxsTm1FdFpqa3pZeTAwWmpFeExUbG1aamt0TkRZeE1ETTBORGxrT1RCaSJ9


# Run the app
gunicorn app:app