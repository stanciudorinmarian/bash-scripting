#!/usr/bin/env bash

greeting="Welcome"
user=$(whoami)
number=1
boolean=true
message="$greeting $user!"

echo $message
echo "Duplicated message: $message"
echo "Number value: $number"
echo "Boolean value: $boolean"
echo "Date: $(date)"
