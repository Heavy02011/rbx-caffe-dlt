# rbx-caffe-dlt

Objective: run https://github.com/yosinski/deep-visualization-toolbox in docker container

1. build container
	
	get Dockerfile
	
	docker build --rm -t="heavy02011/rbx-caffe-dlt:v1" .

2. run container
	
	docker run --name='dlt' -it --rm -v /localfilepath/caffenet-yos:/root/deep-visualization-toolbox/models/caffenet-yos heavy02011/rbx-caffe-dlt:v1

currently not running!!
see issue #1

