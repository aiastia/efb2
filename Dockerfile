FROM ubuntu:latest


ENV LANG C.UTF-8

RUN apt-get update \
    && apt-get install -y \
       python3 \
       python3-pip \
       python3-pil \
       python3-numpy \
       python3-yaml \
       python3-requests \
       ffmpeg \
       libmagic-dev \
       python-setuptools \
       python-dev \
       build-essential \
       libwebp-dev    
       
       
RUN python –version \
    && python3 –version

       
        
RUN pip3 install --upgrade pip \
        && pip3 install pillow \
        && pip3 install pyqrcode               

RUN   pip3 install ehforwarderbot \
        && pi3p install efb-telegram-master \
        && pip3 install efb-wechat-slave \
        && pip3 install git+https://github.com/blueset/ehforwarderbot.git \
        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
