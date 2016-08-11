#!/bin/bash

[ $# -eq 0 ] && echo "Woops, I need a file." && exit -1

csv="$1"
sql="$1.db"
rm -f "$sql"

tmp=`mktemp`
tail -n +2 "$csv" > $tmp
schema=`head -1 "$csv" | sed -e 's/[\/ "]//g'`

sqlite3 "$sql" >& /dev/null << ENDL
create table csv($schema);
.mode csv
.import $tmp csv
.save
.quit
ENDL

rm -f $tmp
echo "Done.\nsqlite3 $sql"
