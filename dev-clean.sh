#! /usr/bin/env bash
set -exu

apt-mark manual libev4
apt-fast purge `grep -v '^[\^#]' dev-dpkg.list`
./poobuntu-clean.sh
rm -v dev-dpkg.list

