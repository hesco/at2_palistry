#!/bin/bash

cd /var/lib/jenkins/sites/palistry/web/themes/custom/at2_palistry 
git pull gh RehmatClick-patch-1-gourav --tags 
drush cr 

