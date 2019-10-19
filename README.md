##docker container for stm32cubeai

### COPY Repository.zip in this folder before running docker build (Repository.zip is 800+MB and cannot be pushed to github)

####To build docker container:
docker build -t stm32cubeai/abcxyz:latest .

or,

source docker-build.sh

####To run stm32cli exe:
docker run -ti stm32cubeai/abcxyz /bin/bash <args for stm32ai exe>

