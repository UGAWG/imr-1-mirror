#!/bin/bash -e

FROM=$HOME/src/adapt-results
TO=$PWD

for DIR in $FROM/*/cube/linear/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/paraview.png $TO/${PROJ}-cube-linear.png
done

for DIR in $FROM/*/cube-cylinder/linear/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/paraview.png $TO/${PROJ}-cube-cylinder-linear.png
done

for DIR in $FROM/*/cube-cylinder/polar-1/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/paraview.png $TO/${PROJ}-cube-cylinder-polar-1.png
done

for DIR in $FROM/*/cube-cylinder/polar-2/
do
  echo $DIR
  PROJ=`dirname $DIR`
  PROJ=`dirname $PROJ`
  PROJ=`basename $PROJ`
  cp $DIR/paraview.png $TO/${PROJ}-cube-cylinder-polar-2.png
done
