#!/bin/bash
Xvfb :0 &
export DISPLAY=:0
ls -l CIM*.JPG | awk '{printf("%s ", $8)}' > input.txt
autopano-complete -o stitched.pto `cat input.txt`
autooptimiser -v 10 -a -l -s -o optimised.pto stitched.pto
pto2mk -o final -p final optimised.pto
make -f final
mogrify -format jpg -quality 100 final.tif