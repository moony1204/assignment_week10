FROM ubuntu:latest

RUN apt-get update && \ 
    apt-get install -y python3 git && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /root/A && \
    mkdir /root/B && \
    mkdir /root/C && \
    mkdir /root/files && \
    touch /root/files/a.txt && \
    touch /root/files/b.txt && \
    touch /root/files/c.txt

RUN git clone https://github.com/moony1204/OSSP_week4.git /root/OSSP_week4

CMD["bash"]