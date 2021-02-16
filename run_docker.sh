#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
docker build --tag=hello .


# Step 2:
# Push image to a docker repository
docker container commit $(docker ps -qa) joepub/capstone
docker push joepub/capstone:hello
