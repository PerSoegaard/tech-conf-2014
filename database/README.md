Installing demo data
====================

**Warning: Following the steps below will destroy all existing data in your database!**

1. Restore a database from [DefaultEmptyData8SQL.zip](http://developer.dynamicweb-cms.com/downloads/dynamicweb-8.aspx)
2. Upgrade the database to [Dynamicweb 8.4.0.8 (or later)](http://developer.dynamicweb-cms.com/downloads/dynamicweb-8.aspx)
3. Copy everything from the [Files](../Files/) folder to your solution's Files folder
4. Apply the sql script [tech-conf-2014.clean.sql](tech-conf-2014.clean.sql)
5. Apply the sql script [tech-conf-2014.data.sql](tech-conf-2014.data.sql)
6. Restart your webserver, e.g. by running `iisreset`
