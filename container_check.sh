# Goal of tghis script is to prompt for Docker container name, if it's skipped it will used infile defined name of container and then will search for specific container and delete it.

# Set container default name as variable
CONTAINER=prod
# Check if prompted value isNotEmpty
# Check if container exist and delete
if [ "$(docker ps -a | grep -c $CONTAINER)" -gt 0 ]; then

  
  docker rm -f $CONTAINER
    echo "[---- Deleted container $CONTAINER]"
 else
  echo "[---- Container with name: $CONTAINER  doesn't exist. ]"
fi

exit
