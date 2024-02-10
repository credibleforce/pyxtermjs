#!/bin/bash

docker build -t pyxtermjs .

docker run --rm -it -p 5000:5000 pyxtermjs