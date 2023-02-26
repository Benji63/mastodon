#!/bin/bash
set -eo pipefail

NOW=$(date +"%Y-%m-%d-%H-%M-%S")

# Exporter la base de données, compresser et envoyer dans un fichier avec la date d'aujourd'hui
sudo -u postgres pg_dump mastodon_production | gzip > \
  /home/mastodon/backups/database/mastodon_production-"$NOW".sql.gz

# Copier la sauvegarde automatique redis
cp /var/lib/redis/dump.rdb /home/mastodon/backups/redis/redis-"$NOW".rdb

touch /tmp/backup