# vim:ts=4:shiftwidth=4:expandtab:smartindent
FROM ubuntu:20.04
RUN useradd --system -m rtcpan

RUN echo "tzdata tzdata/Areas select Europe"        | debconf-set-selections
RUN echo "tzdata tzdata/Zones/Europe select London" | debconf-set-selections

RUN apt-get update
ENV TZ Europe/London
RUN DEBIAN_FRONTEND="noninteractive" apt-get install -y \
	libclass-accessor-perl \
	libdatetime-perl \
	libdatetime-locale-perl \
	libdigest-md5-perl \
	libdigest-sha-perl \
	libdbi-perl \
	libclass-returnvalue-perl \
	libdbix-searchbuilder-perl \
	libtext-template-perl \
	libfile-sharedir-perl \
	libfile-spec-perl \
	libhtml-quoted-perl \
	libhtml-scrubber-perl \
#	libhtml-treebuilder-perl \
#	libhtml-formattext-perl \
	liblog-dispatch-perl \
	libsys-syslog-perl \
	liblocale-maketext-perl \
	liblocale-maketext-lexicon-perl \
	liblocale-maketext-fuzzy-perl \
	libmime-tools-perl \
	libmailtools-perl \
	libemail-address-perl \
	libtext-wrapper-perl \
	libtime-parsedate-perl \
	libtime-hires-perl \
	libfile-temp-perl \
	libtext-quoted-perl \
	libuniversal-require-perl \
	libregexp-common-perl \
	libscalar-list-utils-perl \
	libmodule-versions-report-perl \
	libcache-simple-timedexpiry-perl \
	libencode-perl \
	libcss-squish-perl \
#	libfile-glob-perl \
	libdevel-stacktrace-perl \
	libtext-password-pronounceable-perl \
	libdevel-globaldestruction-perl \
	liblist-moreutils-perl \
	libnet-cidr-perl \
	libregexp-common-net-cidr-perl \
	libregexp-ipv6-perl \
    libtree-simple-perl \
	\
	libhtml-mason-perl \
#	liberrno-perl \
#	libcgi-cookie-perl \
	libstorable-perl \
	libapache-session-perl \
	libxml-rss-perl \
	libtext-wikiformat-perl \
	libcss-squish-perl \
	libdevel-stacktrace-perl \
	libjson-perl \
	libipc-run3-perl \
	\
#	libcgi-perl \
	libcgi-psgi-perl \
	libhtml-mason-psgihandler-perl \
	libplack-perl \
	starlet \
	libcgi-emulate-psgi-perl \
	\
#	libgetopt-long-perl \
	libwww-perl \
#	libpod-usage-perl \
	\
	libcrypt-ssleay-perl \
#	libnet-ssl-perl \
	liblwp-protocol-https-perl \
#	libmozilla-ca-perl \
    ca-certificates \
	\
#	libhttp-request-common-perl \
#	libtext-parsewords-perl \
#	libterm-readline-perl \
    libterm-readline-gnu-perl \
	libterm-readkey-perl \
	\
	libfcgi-perl \
	libfcgi-procmanager-perl \
	\
	libdbd-mysql-perl \
	libgnupg-interface-perl \
	libperlio-eol-perl \
	libdata-ical-perl \
#	libnet-smtp-perl \
	libhtml-rewriteattributes-perl \
	libmime-types-perl \
	liburi-perl \
	\
	graphviz \
	libgraphviz-perl \
	\
	libgd-perl \
	libgd-graph-perl \
	libgd-text-perl \
	\
	libconvert-color-perl \
	libpod-simple-perl
#	libhtml-entities-perl


COPY rt.cpan.org /home/rtcpan/rt

CMD sudo -u rtcpan /home/rtcpan/rt/sbin/rt-server --port 8080
