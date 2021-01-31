FROM ubuntu:20.04
RUN useradd --system -m rtcpan

COPY rt.cpan.org /home/rtcpan/rt
