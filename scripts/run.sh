#!/bin/bash

podman unshare chown 1000:100 notebooks

# remove --net=host
# https://github.com/containers/podman/blob/main/docs/tutorials/basic_networking.md
podman run -d --name ml-learn -v ~/src/me/ml-learn:/home/ml-learn/work -p 8888 --cap-add=SYS_PTRACE --security-opt seccomp=unconfined --device=/dev/kfd --device=/dev/dri --group-add video --ipc=host --net=host localhost/ml-learn:latest