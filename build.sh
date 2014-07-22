#!/bin/bash

DOCKERNAME="jasongiedymin/ansible-base-ubuntu"

usage() {
  echo
  echo "To pull it"
  echo "    docker pull $DOCKERNAME"
  echo
  echo "To use this docker:"
  echo "    docker run -d -P $DOCKERNAME"
  echo
  echo "To run in interactive mode for debug:"
  echo "    docker run -t -i $DOCKERNAME bash"
  echo
}

# Builds the image
run=$(time docker build -t $DOCKERNAME .)

if [ $? == 0 ]; then
  usage
else
  echo "Build failed!"
  exit 1
fi;
