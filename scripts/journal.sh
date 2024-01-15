#!/bin/sh

JOURNAL_PATH="/Users/shashank/Documents/Journal"
DATE=$(date +"%b %d %Y, %A, %I:%M %p")
FILENAME="$JOURNAL_PATH/$(date +"%b%d").md"

printf "Enter Title for Today's Journal: "
read TITLE

cat <<EOF > "$FILENAME"
# $TITLE
Date: $DATE

- Write Something...

---
Shashank
EOF

code "$FILENAME"
