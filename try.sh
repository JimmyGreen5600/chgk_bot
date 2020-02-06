#!/bin/bash
sed -i ':a;N;$!ba;s/\n/%0D%0A/g' quest.txt
sed -i 's/%0D%0A%0D%0A/\n/g' quest.txt
sed -i 's/Ответ:/\nОтвет:/g' quest.txt
sed -i 's/ /%20/g' quest.txt

