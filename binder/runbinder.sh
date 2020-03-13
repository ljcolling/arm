#!/bin/bash

docker run -p 8888:8888 -v $1:/home/rstudio/class ljcolling/mybinder
