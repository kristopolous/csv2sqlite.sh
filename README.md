# Simple command line csv to sqlite

A simple tool that takes 1 argument, a csv file and gives you a database file with 1 table, named csv.  That's it.

    $ ./csv2sqlite.sh data.csv
    Done. Wrote data.csv.db
    $ sqlite3 data.csv.db
    sqlite> select count(*) as c,List from csv group by List order by c asc; ... etc

Can it be that easy?! Only one way to find out.

## Objections!

**Q: Type systems and stuff**

Sqlite3 is not strictly-typed so any value can go in any column.  No magic needed.  

**Q: This CSV has weirdo column names with spaces**

Those get removed, along with quotes and underscores.  It's pretty straight forward.

**Q: I want to use this for a nodejs frameworky thingie**

Honestly? Really...there's so much other more complicated stuff that does that. Let's be simple here.
