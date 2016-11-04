#!/usr/bin/env python

import random
from sh import mv
import argparse
import os
parser = argparse.ArgumentParser(description='give a new randon name to a file')
parser.add_argument('file')
args = parser.parse_args()

(name, ext) = os.path.splitext(args.file)
newname = "%08d%s" % (random.randint(1, 100000000), ext)

mv(args.file, newname)
