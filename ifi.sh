#!/bin/bash

vt="test"

vt2="test2"

if [ $vt = "test" ] && [ "$vt2" = "test2" ]
then
 
echo "found both"

elif [ $vt = "tes2" ] && [ "$vt2" = "tes" ]
then
echo "found two"
 
else

echo "didint found"

fi
