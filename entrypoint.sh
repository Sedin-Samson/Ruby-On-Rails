#!/bin/bash
set -e

# Remove old server.pid if present
rm -f /app/tmp/pids/server.pid

# Run passed commands (e.g. rails s)
exec "$@"
