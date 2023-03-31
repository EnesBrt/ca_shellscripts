#!/bin/bash

BUFFETT="Life is like a snowball. The important thing is finding wet snow 
and a really long hill."
# write your code here
ISAY=${BUFFETT}
ISAY=${BUFFETT[@]/snow/foot}
ISAY=${ISAY[@]/ snow/}
ISAY=${ISAY/is finding/is getting}
ISAY="${ISAY%%wet*}wet"

# Test code - do not modify
echo "Warren Buffett said:"
echo $BUFFETT
echo "and I say:"
echo $ISAY
