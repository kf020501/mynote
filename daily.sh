#!/bin/bash
DATE=$(date +%Y%m%d)
YEAR=$(date +%Y)
MONTH=$(date +%m)
FILE="daily/$YEAR/$MONTH/$DATE.md"

mkdir -p "daily/$YEAR/$MONTH"

if [ ! -f "$FILE" ]; then
  echo "# $DATE" > "$FILE"
fi

command -v code &>/dev/null && code "$FILE"
