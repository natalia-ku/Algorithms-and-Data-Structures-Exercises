#!/bin/sh
ruby redirect.rb <in.txt >result.txt
diff out.txt result.txt
