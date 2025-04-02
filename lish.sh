#code of :list_files.sh----------------------------------------------------------------

#!/bin/bash

source ./logger.sh  #Import logger script 

echo -n "Enter directory path: "
read dir 

if [ -d "$dir" ]; then
    ls -lh "$dir"  #ls -lh: display file sizes, permissions, and timestamps
    log_action "Listed files in $dir"
else
    echo "Invalid directory!"
    log_action "Failed attempt to list files in $dir (Invalid directory)"
fi
