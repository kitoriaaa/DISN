.PHONY: docker-build
docker-build:
	-sudo docker rmi kobayashi/disn
	sudo docker build -t kobayashi/disn container

.PHONY: docker-run
docker-run:
	sudo docker run -it --gpus all -v `pwd`:/usr/workspace --name disn kobayashi/disn

.PHONY: clean
clean:
	-sudo docker stop disn
	sudo docker rm disn

.PHONY: demo
demo:
	 python -u demo/demo.py --cam_est --log_dir checkpoint/SDF_DISN/ --cam_log_dir cam_est/checkpoint/cam_DISN/ --img_feat_twostream --sdf_res 64 &> log/create_sdf.log
