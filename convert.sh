#!/bin/bash

oldifs=$IFS
IFS=$'\n'

for x in $(cat substitution_nocase.txt); {
	first="$(echo $x | awk '{print $1}')"
	second="$(echo $x | awk '{print $2}')"
	echo "	{
	      \"repA\": \"$first\",
	      \"repB\": \"$second\",
	      \"type\": \"Simple\",
              \"case\": \"Maintain\",
	      \"active\": true
	},"
}

IFS=$oldifs
