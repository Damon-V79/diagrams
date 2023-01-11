#!/bin/sh

docker run --rm --user "$(id -u)":"$(id -g)" -v ${PWD}:/code damonv79/diagrams:2.0 mydiagrams.py
