#!/bin/bash

cd /var/lib/jenkins/sites/palistry/web/themes/custom/at2_palistry 
branch_name=$(git branch | grep ^* | sed "s,* ,,")
git pull gh ${branch_name} --tags 
drush cr

