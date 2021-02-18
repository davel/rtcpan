rtfrontend
----------

Incoming web server. Serves static content and talks fcgi. Listens on port 80.

rtapp
-----

FCGI application server. rtfrontend connects to it. Needs to connect to a
database.

rtperl
------

Slightly smaller container for running command line jobs.
