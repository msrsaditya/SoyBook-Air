#!/bin/sh

filename="$1"
upload_url=$(curl -s -F "file=@$filename" https://0x0.st)
printf "%s" "$upload_url" | pbcopy
osascript -e "display notification \"URL: $upload_url\" with title \"URL Copied\""
