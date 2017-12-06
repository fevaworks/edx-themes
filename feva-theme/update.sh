#!/bin/bash

# restart edx instances
sudo /edx/bin/supervisorctl restart edxapp:

# update assets as edxapp user
sudo -H -u edxapp bash << EOF
source /edx/app/edxapp/edxapp_env
cd /edx/app/edxapp/edx-platform
paver update_assets lms --settings=aws --debug
EOF

# restart edx instances
sudo /edx/bin/supervisorctl restart edxapp:
