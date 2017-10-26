#!/bin/sh
ruby c.rb <in.txt >answer.txt
diff out.txt answer.txt
