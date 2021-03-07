#!/bin/bash
pushd images
for file in *.jpg; do
    if [ ! -f grayscale/$file ]; then
        # convert infile -colorspace Gray -gamma 2.2 outfile
        convert -verbose $file -colorspace Gray -gamma 2.2 grayscale/$file
    fi
done
popd
