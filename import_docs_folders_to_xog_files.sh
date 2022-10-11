#!/bin/bash

for i in *.xog.output; do ./xog -username admin -password password -servername localhost -portnumber 81 -sslenabled false -input $i -output $i.completed ; rm -rf $i
done
