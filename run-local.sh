docker build -t robolwq/bamboo-ha:1.2 -f Dockerfile-try .

docker run -ti --rm --security-opt seccomp:unconfined --cap-add=SYS_PTRACE --net=host \
	-e MARATHON_USE_EVENT_STREAM=true \
	-v $(pwd):/root/go/src/github.com/QubitProducts/bamboo \
	robolwq/bamboo-ha:1.2 bash

cd [target folder]
./builder/run.sh	
dlv debug bamboo.go -- -bind=:8000 -config=config/production.example.json
