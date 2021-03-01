#!/usr/bin/env bash

## Complete the following steps to get Docker running locally

# Step 1:
# Remove container
docker rm $(docker ps -a -f status=exited -q)

#Step 2:
# Build image and add a descriptive tag
docker build --tag=capstone .

# Step 3:
# List docker images
docker image ls
docker images --filter reference=capstone

# Step 4:
# Run flask_app
#docker run --name capstone -p 8000:8000  -p 50000:50000 hello
#docker run -t -i -p 8000:80 hello
#CMD ["python", "flask_app/webapp.py"]
