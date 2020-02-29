# docker-ucsc-cse110a

## Overview

A docker image for developing UCSC [CSE 110A: Fundamentals of Compiler Design I](https://ucsc-cse-110a.github.io/winter20/).

## Changelog

+ hw4:
  + bundles `gdb`
+ hw3:
  + bundles `valgrind`
+ hw1:
  + initial commit

## Usage

```bash
# cd into the project repository
cd YOUR_REPOSITORY_PATH
# Pull the image
docker pull shumbo/cse110a
# Create a container
docker run -itd -v $(PWD):/workspace --name {{container name}} shumbo/cse110a
# Run test
docker exec -w /workspace {{container name}} make
# or execute an interactive shell
docker exec -it -w /workspace {{container name}} /bin/bash
```

The first run takes a while as it installs and compiles dependencies. Also note that you might need to increase the RAM available to the container (default 2GB if you're on Docker Desktop for Mac) to avoid OOM during the compilation. You may do so in the preference of Docker Desktop.
