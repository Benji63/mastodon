#!/bin/bash
set -eo pipefail

NOW=$(date +"%Y-%m-%d-%H-%M-%S")

# Export database, compress, and send to file with today's date
sudo -u postgres pg_dump mastodon_production | gzip > \
  /home/mastodon/backups/database/mastodon_production-"$NOW".sql.gz

# Copy redis automatic backup
cp /var/lib/redis/dump.rdb /home/mastodon/backups/redis/redis-"$NOW".rdb

touch /tmp/backup