#!/usr/bin/env python

from sh import ratpoison, hostname

windows = ratpoison(command='windows %n|%s%t')
for w in windows:
    h = hostname().stdout.strip()
    if h in w and 'byobu' in w:
        wid = w.split('|')[0]
        ratpoison(command="select %s" % wid)
