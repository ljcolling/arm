#!/bin/bash

docker run --rm -v $1:/home/rstudio/ -e PASSWORD=password -p 8787:8787 lcolling/arm:1.0.3
