#!/bin/bash

docker build -t dev/$1 -f $1/Dockerfile $1/
