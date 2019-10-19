#!/bin/bash

echo Running from stm32cubeai-docker

#Set Environment variables
export CUBE_FW_DIR=/opt/STM32Cube/Repository
export X_CUBE_AI_DIR=$CUBE_FW_DIR/Packs/STMicroelectronics/X-CUBE-AI/4.0.0
export PATH=$X_CUBE_AI_DIR/Utilities/linux:$PATH
chmod 755 /opt/STM32Cube/Repository/Packs/STMicroelectronics/X-CUBE-AI/4.0.0/Utilities/linux/stm32ai

echo "args: " $@
if [[ $# -ne 0 ]];
then
    echo Running stm32ai with args: $@
    stm32ai $@
else
    echo You need to supply some arguments
fi
