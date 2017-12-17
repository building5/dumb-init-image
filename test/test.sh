#!/bin/sh

if test $(which dumb-init) = /usr/local/bin/dumb-init; then
  echo "PASS" >&2
else
  echo "FAIL: expected dumb-init to install correctly" >&2
  exit 1
fi

if test $(readlink /proc/1/exe) = /usr/local/bin/dumb-init; then
  echo "PASS" >&2
else
  echo "FAIL: expected dumb-init to be pid 1" >&2
  exit 1
fi

echo "ALL TESTS PASS" >&2
