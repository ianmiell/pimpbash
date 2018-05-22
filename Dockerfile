FROM debian
RUN apt update -y && apt install -y wget build-essential vim xterm automake autoconf libtool
ADD bash-4.4 /bash-4.4
#RUN wget http://ftp.gnu.org/gnu/bash/bash-4.4.tar.gz
#RUN gunzip bash-4.4.tar.gz
#RUN tar -xvf bash-4.4.tar
WORKDIR /bash-4.4
RUN ./configure
RUN make
CMD sleep 9999

