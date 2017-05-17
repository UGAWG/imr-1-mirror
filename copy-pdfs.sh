#!/bin/bash -e

FROM=$HOME/src/adapt-results
TO=$PWD

for DIR in $FROM/*/cube/linear/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/quality.pdf $TO/${PROJ}-cube-linear-quality.pdf
  cp $DIR/length.pdf $TO/${PROJ}-cube-linear-length.pdf
done

for DIR in $FROM/*/cube-cylinder/linear/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/quality.pdf $TO/${PROJ}-cube-cylinder-linear-quality.pdf
  cp $DIR/length.pdf $TO/${PROJ}-cube-cylinder-linear-length.pdf
done

for DIR in $FROM/*/cube-cylinder/polar-1/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/quality.pdf $TO/${PROJ}-cube-cylinder-polar-1-quality.pdf
  cp $DIR/length.pdf $TO/${PROJ}-cube-cylinder-polar-1-length.pdf
done

for DIR in $FROM/*/cube-cylinder/polar-2/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/quality.pdf $TO/${PROJ}-cube-cylinder-polar-2-quality.pdf
  cp $DIR/length.pdf $TO/${PROJ}-cube-cylinder-polar-2-length.pdf
done
