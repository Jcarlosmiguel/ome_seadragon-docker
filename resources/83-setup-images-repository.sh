#!/bin/bash

set -eu

export PATH="/opt/omero/web/venv/bin:$PATH"
python=/opt/omero/web/venv/bin/python
omero=/opt/omero/web/OMERO.web/bin/omero

IMAGES_REPOSITORY="${IMAGES_REPOSITORY:-/OMERO/}"
IMAGES_FOLDER="${IMAGES_FOLDER:-}"

$python $omero config set omero.web.ome_seadragon.repository "$IMAGES_REPOSITORY"
if [ -n "$IMAGES_FOLDER" ]; then
    $python $omero config set omero.web.ome_seadragon.images_folder "$IMAGES_FOLDER"
fi
