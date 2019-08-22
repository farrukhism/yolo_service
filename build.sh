#!/bin/bash

# Base builds
docker build -t yolo_service:1.0-yolov3_coco \
	--build-arg weights_file="yolov3.weights" \
	--build-arg config_file="data/yolov3.cfg" \
	--build-arg meta_file="data/coco.data" \
       	. 

docker build -t yolo_service:1.0-yolov3_openimages \
	--build-arg weights_file="yolov3-openimages.weights" \
	--build-arg config_file="data/yolov3-openimages.cfg" \
	--build-arg meta_file="data/openimages.data" \
       	. 

docker build -t yolo_service:1.0-yolo9000 \
	--build-arg weights_file="yolo9000.weights" \
	--build-arg config_file="data/yolo9000.cfg" \
	--build-arg meta_file="data/combine9k.data" \
       	. 

# CUDA builds
docker build -t yolo_service:1.0_cuda-yolov3_coco \
	--build-arg weights_file="yolov3.weights" \
	--build-arg config_file="data/yolov3.cfg" \
	--build-arg meta_file="data/coco.data" \
	--build-arg build_image="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04" \
	--build-arg app_image="nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04" \
	--build-arg cuda=1 \
       	. 

docker build -t yolo_service:1.0_cuda-yolov3_openimages \
	--build-arg weights_file="yolov3-openimages.weights" \
	--build-arg config_file="data/yolov3-openimages.cfg" \
	--build-arg meta_file="data/openimages.data" \
	--build-arg build_image="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04" \
	--build-arg app_image="nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04" \
	--build-arg cuda=1 \
       	. 

docker build -t yolo_service:1.0_cuda-yolo9000 \
	--build-arg weights_file="yolo9000.weights" \
	--build-arg config_file="data/yolo9000.cfg" \
	--build-arg meta_file="data/combine9k.data" \
	--build-arg build_image="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04" \
	--build-arg app_image="nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04" \
	--build-arg cuda=1 \
       	. 

# CUDA with Tensor Cores build
docker build -t yolo_service:1.0_cuda_tc-yolov3_coco \
	--build-arg weights_file="yolov3.weights" \
	--build-arg config_file="data/yolov3.cfg" \
	--build-arg meta_file="data/coco.data" \
	--build-arg build_image="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04" \
	--build-arg app_image="nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04" \
	--build-arg cuda=1 \
	--build-arg cuda_tc=1 \
       	. 

docker build -t yolo_service:1.0_cuda_tc-yolov3_openimages \
	--build-arg weights_file="yolov3-openimages.weights" \
	--build-arg config_file="data/yolov3-openimages.cfg" \
	--build-arg meta_file="data/openimages.data" \
	--build-arg build_image="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04" \
	--build-arg app_image="nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04" \
	--build-arg cuda=1 \
	--build-arg cuda_tc=1 \
       	. 

docker build -t yolo_service:1.0_cuda_tc-yolo9000 \
	--build-arg weights_file="yolo9000.weights" \
	--build-arg config_file="data/yolo9000.cfg" \
	--build-arg meta_file="data/combine9k.data" \
	--build-arg build_image="nvidia/cuda:10.1-cudnn7-devel-ubuntu18.04" \
	--build-arg app_image="nvidia/cuda:10.1-cudnn7-runtime-ubuntu18.04" \
	--build-arg cuda=1 \
	--build-arg cuda_tc=1 \
       	. 
