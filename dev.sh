
docker run \
  -v /tmp/.X11-unix:/tmp/.X11-unix \
  -v /var/run/docker.sock:/var/run/docker.sock \
  --env DISPLAY="$DISPLAY" \
  -v /home/xuananh:/home/xuananh \
  -t -i \
  -w /home/xuananh \
  --device /dev/dri \
  --network host \
  --restart always \
  --privileged \
  --name "dev_64" \
  --gpus all "nvcr.io/nvidia/deepstream:6.4-gc-triton-devel"
