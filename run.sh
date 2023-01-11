#!/bin/sh

docker run --rm --user "$(id -u)":"$(id -g)" -v ${PWD}:/code damonv79/diagrams:latest mydiagrams.py
