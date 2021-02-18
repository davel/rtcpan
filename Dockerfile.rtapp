FROM rtperl


RUN apt-get update && DEBIAN_FRONTEND="noninteractive" apt-get install -y spawn-fcgi

COPY run-rt /usr/local/sbin/run-rt
CMD /usr/local/sbin/run-rt
