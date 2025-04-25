#!/bin/bash

cd /var/lib/jenkins/sites/palistry/web/themes/custom/at2_palistry
branch_name=$(git branch | grep ^* | sed "s,* ,,")
git pull gh ${branch_name} --tags
drush cr
git describe --tags > theme_version.txt
git branch >> theme_version.txt
git status >> theme_version.txt

