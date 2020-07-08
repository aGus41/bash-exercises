#!/bin/bash

# use of sed command to fix an html tag

cat defectuoso.html | sed -e 's/<\/parr>/<\/p>/g' | sed -e 's/<parr>/<p>/g' >  arreglado.html
