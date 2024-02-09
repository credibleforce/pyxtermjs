#!/bin/bash

docker build -t pyxtermjs .

docker run --rm -it -p 8000:5000