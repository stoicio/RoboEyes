# Code & Jupyter notebooks working through Udacity's [Computer Vision course](https://www.udacity.com/course/computer-vision-nanodegree--nd891)

#### Enviroment Setup:
* Install [docker](www.docker.com) & [nvidia-docker](https://github.com/NVIDIA/nvidia-docker)
* Build [PyTorch](https://pytorch.org/) docker container by following instructions in the Repo [README](https://github.com/pytorch/pytorch#docker-image)
* Using the build `pytorch:latest` as the base image, add other dependencies by running the following command from the top level of this repo. 
    `docker build -f Dockerfile -t cvnd:gpu .`
* Start the container using the following command
    - `nvidia-docker run -it --rm -v /home/user/path/to/repo:/usr/src/app -p 8888:8888 cvnd:gpu`
    - Bash aliases are useful if you have to start the container often.
*  To activate the conda environment, use `. activate cvnd`. If you want to run a jupyter notebook instead run `./run.sh` which automatically activates the environment

### Completed Projects

- [ ] Facial keypoint detection
- [ ] Image Captioning
- [ ] Landmark Detection & Tracking (SLAM)
