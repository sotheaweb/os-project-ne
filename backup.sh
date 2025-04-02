#code of : backup.sh----------------------------------------------------------------

#!/bin/bash

source ./logger.sh  #Import logger script 

echo -n "Enter file/directory to back up: "
read SOURCE

echo -n "Enter backup destination: "
read DESTINATION

if [ -e "$SOURCE" ]; then
    cp -r "$SOURCE" "$DESTINATION"    #cp -r : copy the files/directories 
    echo "Backup completed."
    log_action "Backed up $SOURCE to $DESTINATION"
else
    echo "Source does not exist!"
    log_action "Backup failed for $SOURCE (Source does not exist)"
