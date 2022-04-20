# WordPress Docker Template

## Quick Start

1. Set Environment Variables
```bash
WORDPRESS_DB_HOST="db"
WORDPRESS_DB_USER="someuser"
WORDPRESS_DB_PASSWORD="somepass"
```
2. Run docker compose
```bash
docker-compose -f "docker-compose.dev.yaml" up --build
```
3. Add custom themes and plugins

Add and develop custom themes in ```src/themes/{theme-name}/``` and plugins in ```src/plugins/{plugin-name}```