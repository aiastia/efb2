FROM ubuntu:latest


ENV LANG C.UTF-8

RUN apt-get update && \
    apt-get install -y \
        python3 \
        python3-pip \
        python3-pil \
        python3-numpy \
        python3-yaml \
        python3-requests \
        ffmpeg \
        libmagic-dev \
        libwebp-dev            

RUN set -ex \
        && pip3 install --upgrade pip \
        && pip3 install pillow \
        && pip3 install pyqrcode \
        && pip3 install ehforwarderbot \
        && pip3 install efb-telegram-master \
        && pip3 install efb-wechat-slave \
        && pip3 install git+https://github.com/blueset/ehforwarderbot.git \

        && pip3 install --upgrade git+https://github.com/littlecodersh/ItChat.git

CMD ["ehforwarderbot"]
