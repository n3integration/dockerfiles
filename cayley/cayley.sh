#!/bin/sh

cayley=/usr/local/cayley/bin

if [ ! -f /data/cayley ]; then
  $cayley init -db bolt -dbpath /data/cayley
fi

$cayley http -config /etc/cayley/cayley.cfg -host 0.0.0.0 -port 64210 -assets /usr/local/cayley/
