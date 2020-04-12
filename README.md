Docker image with Firebird 2.1.3 Superserver i386
============================================================

Contains Ubuntu lasted image with Firebird 2.1.3 Superserver architecture.

Usage
------

    $ docker run -d \
        -p 3050:3050 \
        -v /sqlbase:/sqlbase \
        --name firebird \
        ingmarcosp/firebird2.5


SECURITY
---------
**SYSDBA** password is set to `masterkey` by default.

This docker was made for a specific application.
If you want a differen password you must login into the container and change it:

    docker exec -i -t firebird21332bit /bin/bash
	~> ./changeDBAPassword.sh

License
--------

Read LICENSE
