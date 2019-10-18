#!/bin/bash

echo Running from stm32cubeai-docker

#Set Environment variables
export CUBE_FW_DIR=/opt/STM32Cube/Repository
export X_CUBE_AI_DIR=$CUBE_FW_DIR/Packs/STMicroelectronics/X-CUBE-AI/4.0.0
export PATH=$X_CUBE_AI_DIR/Utilities/linux:$PATH

