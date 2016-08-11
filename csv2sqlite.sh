#!/bin/bash

csv="$1"
sql="$1.db"
rm -f "$sql"

tail -n +2 "$csv" > "$csv".tmp
schema=`head -1 "$csv" | sed -e 's/[\/ "]//g'`

sqlite3 "$sql" >& /dev/null << ENDL
create table csv($schema);
.mode csv
.import ${csv}.tmp csv
.save
.quit
ENDL

echo "run sqlite3 $sql"
