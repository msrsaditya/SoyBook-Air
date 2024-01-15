#!/bin/sh

JOURNAL_PATH="/Users/shashank/Documents/Journal"
DATE=$(date +"%d %b %Y, %I:%M %p")
FILENAME="$JOURNAL_PATH/$(date +"%b%d").md"

printf "Enter Title for Today's Journal: "
read TITLE

cat <<EOF > "$FILENAME"
# $TITLE
**Date: $DATE**

Write Something Here...

---
*Shashank*
EOF

code "$FILENAME"
