FROM ubuntu:16.04

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get -y update && \
    apt-get -y install software-properties-common && \
    add-apt-repository -y ppa:team-gcc-arm-embedded/ppa && \
    apt-get -y update && \
    apt-get install -y gcc-arm-embedded && \
    apt-get -y install git && \
    apt-get purge -y --auto-remove

#STM32CubeAI.pack should be ideally available in a github repo
COPY Repository.zip /opt/STM32Cube
RUN unzip /opt/STM32Cube/Repository.zip -d /opt/STM32Cube \
&& rm /opt/STM32Cube/Repository.zip

# Clean up APT cache when done
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

#RUN useradd -ms /bin/bash cube
#USER cube

RUN mkdir -p /stm32cubeai
WORKDIR /stm32cubeai
COPY start_script.sh /stm32cubeai
ENTRYPOINT ["/bin/bash", "start_script.sh"]

