FROM tensorflow/tensorflow:1.5.0-gpu-py3

RUN apt-get update \
    && apt-get install -y \
        build-essential \
        cmake \
        git \
        wget \
        unzip \
        yasm \
        pkg-config \
        libswscale-dev \
        libtbb2 \
        libtbb-dev \
        libjpeg-dev \
        libpng-dev \
        libtiff-dev \
        libavformat-dev \
        libpq-dev \
    && rm -rf /var/lib/apt/lists/*

RUN pip install numpy
RUN pip install wheel

RUN pip install --upgrade pip

RUN apt-get update \
    && apt-get install -y libsm6 \
    libxext6 \
    libxrender-dev
    
RUN pip install opencv-python
RUN pip install opencv-contrib-python
