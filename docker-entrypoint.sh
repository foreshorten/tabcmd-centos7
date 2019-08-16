#!/bin/bash
set -e
if [ "$TABCMD" == 'tabcmd --accepteula' ]; then /opt/tableau/tabcmd/bin/tabcmd --accepteula ; else echo 'Must accept the tableau software EULA using -e TABCMD="tabcmd --accepteula"'; fi
exec "$@"