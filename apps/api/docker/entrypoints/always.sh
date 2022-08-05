#!/bin/bash

while true
do
  bash $1
  echo "Sleep 10 seconds before trying again"
  sleep 10
done
