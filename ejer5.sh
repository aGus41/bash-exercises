#!/bin/bash

cat defectuoso.html | sed -e 's/<\/parr>/<\/p>/g' | sed -e 's/<parr>/<p>/g' >  arreglado.html
