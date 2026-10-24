#!/bin/bash
# ==============================================================================
# 🚀 Enterprise Cloud Architect - Nextcloud Automated Backup Script
# Author: Khenjee Marzan Agmata
# Description: Automates the backup of MariaDB database and Nextcloud data volumes,
#              compresses them into a tar.gz archive, and cleans up old backups.[cite: 8]
# ==============================================================================

# Configuration Variables
BACKUP_DIR="/home/khen/backups"
PROJECT_DIR="/home/khen/nextcloud"
DATE=$(date +"%Y%m%d_%H%M%S")
BACKUP_NAME="nextcloud_backup_$DATE.tar.gz"
RETENTION_DAYS=7

# Create backup directory if it doesn't exist
mkdir -p "$BACKUP_DIR"

echo "[$(date)] 🔄 Starting Nextcloud automated backup..."

# Step 1: Database dump for safety using docker exec
cd "$PROJECT_DIR" || exit 1
docker compose exec -T db mariadb-dump -u nextcloud -pnextcloudpass nextcloud > "$BACKUP_DIR/db_dump_$DATE.sql"

# Step 2: Compress persistent volumes into a single archive
tar -czf "$BACKUP_DIR/$BACKUP_NAME" -C /var/lib/docker/volumes nextcloud_db_data nextcloud_nextcloud_data 2>/dev/null

echo "[$(date)] ✅ Backup archive created successfully: $BACKUP_NAME"

# Step 3: Clean up backups older than RETENTION_DAYS (7 days policy)
find "$BACKUP_DIR" -type f -name "nextcloud_backup_*.tar.gz" -mtime +$RETENTION_DAYS -exec rm {} \;
find "$BACKUP_DIR" -type f -name "db_dump_*.sql" -mtime +$RETENTION_DAYS -exec rm {} \;

echo "[$(date)] 🧹 Cleanup completed. Retention policy: kept last $RETENTION_DAYS days."
