#!/bin/bash

echo "What site? (scotts, scottsmgro, etc)"

read site

CMD="rm -rf docroot/sites/default/files/${site}"
echo "running: ${CMD}"
eval $CMD

CMD="tar -xvf ../production_files/files-${site}.tgz -C ./docroot/sites/default/files/"
echo "running: ${CMD}"
eval $CMD

CMD="./scripts/update/updatelocal.sh ${site}"
echo "running: ${CMD}"
eval $CMD
