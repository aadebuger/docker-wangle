FROM  aadebuger/folly

RUN apt-get update
RUN apt-get install -yq unzip
RUN apt-get install -yq git
RUN apt-get install -yq curl
RUN apt-get install -yq cmake build-essential
RUN apt-get install -yq \
    flex \
    bison \
    libkrb5-dev \
    libsasl2-dev \
    libnuma-dev \
    pkg-config \
    libssl-dev \
    libcap-dev \
    gperf \
    autoconf-archive \
    libevent-dev \
    libgoogle-glog-dev \
    wget
WORKDIR /home
RUN git clone https://github.com/facebook/wangle.git
WORKDIR /home/wangle/wangle
run sed -i 's/https:\/\/googlemock.googlecode.com\/files//g' CMakeLists.txt
add gmock-1.7.0.zip /home/wangle/wangle

run ls /home/wangle/wangle
run cat /home/wangle/wangle/CMakeLists.txt
#run cmake .
#run make 
#run ctest
#run make install
