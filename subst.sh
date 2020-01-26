#!/bin/bash
sed -i ':a;N;$!ba;s/\n/%0D%0A/g' $1;sed -i 's/ /%20/g' $1
