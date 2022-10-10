# FROM dodasts/cygno-lab:<latest release> -> for example:
# FROM dodasts/cygno-lab:v1.0.16-cygno
FROM dodasts/cygno-lab:v1.0.16-cygno

# Testetd updadete implemented in v1.0.16-cygno
# RUN pip3 install 'https://github.com/CYGNUS-RD/middleware/blob/master/midas/midaslib.tar.gz?raw=true'
# RUN pip3 install tensorflow
# RUN pip3 install keras
# RUN pip3 install opencv-python

# just alwas run last update on CYGNO LIB


RUN pip3 install --no-cache-dir -U \
    root_numpy \
    && pip3 install --no-cache-dir -U git+https://github.com/CYGNUS-RD/cygno.git \
    && pip3 install 'https://github.com/CYGNUS-RD/middleware/blob/master/midas/midaslib.tar.gz?raw=true'
    
RUN yum install emacs -y 
RUN yum install screen -y
RUN wget https://www.python.org/ftp/python/3.9.10/Python-3.9.10.tgz; \
    tar xvf Python-3.9.10.tgz; \
    cd Python-3.9*/; \
    ./configure --enable-optimizations; \
    make altinstall; \
    cd .. ; \
    rm -rf Python-3.9*


