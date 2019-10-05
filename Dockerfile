FROM nvidia/cuda:10.0-cudnn7-devel-ubuntu18.04

RUN apt update && apt install -y unzip curl
WORKDIR /cm
RUN curl https://codeload.github.com/ForkLab/cuda_memtest/zip/dev -o cuda_memtest.zip
RUN unzip cuda_memtest.zip
WORKDIR /cm/cuda_memtest-dev
RUN make cuda_memtest_sm61
