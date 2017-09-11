#!/bin/sh

set -ex

PATH=/bin:/usr/bin:/usr/local/bin

root=$(realpath $(dirname $0))

destdir="$root/c3vimpkg"

if [ -d $destdir ]; then
	echo "Error: $destdir already exists, remove it first"
fi

mkdir $destdir

git archive master | tar -C $destdir -xf -

export destdir
git submodule foreach 'git archive master | tar -C $destdir/$path -xf -'

tar --options gzip:compression-level=9 -czf c3vimpkg.tar.gz c3vimpkg
rm -r c3vimpkg
