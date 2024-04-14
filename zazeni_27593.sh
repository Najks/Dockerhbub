#!/bin/bash

# Create directory for testing
mkdir test
cd test

# Run Docker container
docker run -it --name testing najks/orv_vaja2:latest

# Remove Docker container
docker rm testing 

# Return to previous directory and remove the testing directory
cd ..
rmdir test
