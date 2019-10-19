## Docker Container for Stm32CubeAI

#### IMP: Before using this repo: 
<strong><em>COPY</em></strong> STM32CubeAI Repository.zip in this folder before running docker build (Repository.zip is 800+MB and cannot be pushed to github)

#### To build docker container:
docker build  --rm -f ./Dockerfile -t stm32cubeai/abcxyz:latest .
or,
source docker-build.sh

#### To run stm32cli exe:
docker run -ti stm32cubeai/abcxyz /bin/bash <args for stm32ai exe>
