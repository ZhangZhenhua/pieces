#/bin/bash

#set -x

echo "removing " $1
ceph osd out $1
ceph osd crush remove $1
ceph auth del $1
/etc/init.d/ceph stop $1
ceph osd rm $1

