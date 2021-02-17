# vim:ts=4:shiftwidth=4:expandtab:smartindent
FROM ubuntu:20.04
RUN useradd --system -m rtcpan

RUN echo "tzdata tzdata/Areas select Europe"        | debconf-set-selections
RUN echo "tzdata tzdata/Zones/Europe select London" | debconf-set-selections

ENV TZ Europe/London

COPY rt.cpan.org /home/rtcpan/rt






