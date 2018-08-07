#!/bin/bash

echo "What site? (scotts, scottsmgro, etc)"

read site

CMD="drush @${site}.local sql-drop -y && drush @${site}.local sqlc < ../production_files/db-${site}.sql"
echo "running: ${CMD}"
eval $CMD

