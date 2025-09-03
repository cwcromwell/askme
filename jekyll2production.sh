#!/bin/sh

echo "Trying to copy to askme repo."
echo "File move is verified" >> _site/askmeverify.txt 
cp -R _site/* ../askme-site/askme  || echo "UNABLE TO COPY FILES. Does the directory exist?"
cat ../askme-site/askmeverify.txt  ||  echo "COPYING OPERATION FAILED."
# Fix: Use && or ; instead of | for sequential commands
rm _site/askmeverify.txt  && rm ../askme-site/askmeverify.txt

