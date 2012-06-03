#!/bin/bash
Xvfb :0 &
export DISPLAY=:0
ls -l CIM*.JPG | awk '{printf("%s ", $9)}' > input.txt
autopano-c-complete -o stitched.pto `cat input.txt`
autooptimiser -v 9500 -a -l -s -o optimised.pto stitched.pto
pto2mk -o final -p final optimised.pto
make -f final
mogrify -format jpg -quality 100 final.tif
