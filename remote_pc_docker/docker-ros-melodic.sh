#!/usr/bin/bash

id_res=$(id | grep docker)

if [ -n "$id_res" ];
then echo "docker가 이미 등록되어 있습니다!"
else
	echo "지금부터 docker를 등록합니다!"
	sudo usermod -aG docker $USER
	#newgrp docker
	exit
fi

docker_check=$(docker images | awk '{ print $2 }' | grep "radar-dev")
if [ -n "$docker_check" ];
then echo "이미 설치되어 있습니다!"
else
	echo "도커 이미지 설치!"
	docker build --no-cache --force-rm -f Dockerfile --build-arg HOST_USER=$USER -t ros/melodic:radar-dev .
fi

USER_UID=$(id -u)
TAG='radar-dev'
IMAGE='ros/melodic'
TTY='--device=/dev/ttyACM0'

xhost +

echo "IMAGE=" $IMAGE
echo "TAG=" $TAG
echo "USER_UID=" $USER_UID
echo "USER=" $USER
echo "IPADDR=" $(hostname -I | cut -d' ' -f1)
echo "TTY=" $TTY

ENV_PARAMS=()
OTHER_PARAMS=()
args=("$@")
for ((a=0; a<"${#args[@]}"; ++a)); do
	case ${args[a]} in
		-e) ENV_PARAMS+=("${args[a+1]}"); unset args[a+1]; ;;
		--env=*) ENV_PARAMS+=("${args[a]}"); ;;
		*) OTHER_PARAMS+=("${args[a]}"); ;;
	esac
done

cur_loc=$(pwd)
docker run -it \
	--init \
	--ipc=host \
	--shm-size=8G \
	--privileged=true \
	--net=host \
	-e DISPLAY=$DISPLAY \
	-e XDG_RUNTIME_DIR=/run/user/1000 \
	-e QT_GRAPHICSSYSTEM=native \
	-e CONTAINER_NAME=$TAG \
	-e USER=$USER \
	-e LIBGL_ALWAYS_INDIRECT=0 \
	-e NVIDIA_DRIVER_CAPABILITIES=all \
	--env=UDEV=1 \
	--env=LIBUSB_DEBU=1 \
	--env="DISPLAY" \
	--env="QT_X11_NO_MITSHM=1" \
	${ENV_PARAMS[@]} \
	-v /dev:/dev \
	-v /tmp/.X11-unix:/tmp/.X11-unix:rw \
	-v $cur_loc/workspace:/home/$USER/workspace \
	-v $cur_loc/radar-dev:/home/$USER/radar-dev \
	ros/melodic:radar-dev \
	${OTHER_PARAMS[@]} \
	/bin/bash

#export container_id=$(docker ps -l -q)
