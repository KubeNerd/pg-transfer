#!/bin/bash

PGUSER="${PGUSER}"
PGPASSWORD="${PGPASSWORD}"
PGDB="${PGDB}"
PGHOST="${PGHOST}"
PGPORT="${PGPORT}"
PG_DUMP_TO_RESTORE="${PG_DUMP_TO_RESTORE}"

echo "Starting PostgreSQL restore..."


export PGPASSWORD=$PGPASSWORD

psql -U "$PGUSER" -h "$PGHOST" -p "$PGPORT" -d "$PGDB" -f "$PG_DUMP_TO_RESTORE"

if [ $? -eq 0 ]; then
    echo "Restore completed successfully."
else
    echo "Restore failed."
    exit 1
fi
