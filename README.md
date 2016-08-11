# Simple command line csv to sqlite

A simple tool that takes 1 argument, a csv file and gives you a database file with 1 table, named csv.  That's it.

## Objections!

**Q: Type systems and stuff**

Sqlite3 is not strictly-typed so any value can go in any column.  No magic needed.  

**Q: Weirdo column names with spaces**

Those get removed, along with quotes and underscores.  It's pretty straight forward.

**Q: I want to use this for nodejs frameworky thingie**

Honestly? Really...there's so much other more complicated crap that does that. Let's be simple here.
