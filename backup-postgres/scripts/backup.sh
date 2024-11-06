#!/bin/bash

PGUSER="${PGUSER}"
PGPASSWORD="${PGPASSWORD}"
PGDB="${PGDB}"
PGHOST="${PGHOST}"
PGPORT="${PGPORT}"

echo "Starting PostgreSQL backup..."

export PGPASSWORD=$PGPASSWORD
pg_dump -U "$PGUSER" -h "$PGHOST" -p "$PGPORT" "$PGDB" > /dump/backup_$(date +'%Y%m%d%H%M%S').sql


if [ $? -eq 0 ]; then
    echo "Backup completed successfully."
else
    echo "Backup failed."
    exit 1
fi
