# Raspberry Pi/ARM
#FROM easypi/alpine-arm

# x86_64
FROM alpine

MAINTAINER willj12

# install packages
RUN \
 apk add --no-cache \
	autoconf \
	curl \
	eudev-dev \
	ffmpeg-dev \
	freetype-dev \
	g++ \
	gcc \
	glib-dev \
	jpeg-dev \
	lcms2-dev \
	libffi \
	libffi-dev \
	libgcc \
	libxml2-dev \
	libxslt-dev \
	linux-headers \
	make \
	musl-dev \
	openjpeg-dev \
	openssl \
	openssl-dev \
	python3 \
	python3-dev \
	tcl-dev \
	tiff-dev \
	tk-dev \
	zlib-dev

RUN ln -s /usr/include/locale.h /usr/include/xlocale.h

RUN pip3 install --upgrade pip

RUN \
 pip3 install -r https://raw.githubusercontent.com/home-assistant/home-assistant/master/requirements_all.txt

RUN \
 pip3 install homeassistant

# Default hass port
EXPOSE 8123

# default command
CMD ["hass", "--config", "/config"]
