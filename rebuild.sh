#!/bin/bash

docker build -t interactivemarkdown/base .
docker build -t im-vnc-test test/
