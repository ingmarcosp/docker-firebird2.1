#!/bin/bash

echo "downloading"
curl -L -o firebird.tar.gz "https://master.dl.sourceforge.net/project/firebird/firebird-linux-i386/2.1.3-Release/FirebirdSS-2.1.3.18185-0.i686.tar.gz"
echo "uncompres"
tar -xvf firebird.tar.gz -C . --strip-components=1
echo "instaling"
./install.sh <<EOF

masterkey
EOF
echo "install finish"

echo "Changin Firebird run User"
sh /opt/firebird/bin/changeRunUser.sh
