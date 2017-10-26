#!/bin/sh
ruby redirect.rb <in.txt >out.txt
diff out.txt answer.txt
