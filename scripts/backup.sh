#!/bin/bash

mkdir -p backups

docker exec universal_postgres pg_dumpall -U $POSTGRES_USER > backups/postgres.sql

docker exec universal_mysql mysqldump -u root -p$MYSQL_ROOT_PASSWORD --all-databases > backups/mysql.sql

echo "Backup completed."
