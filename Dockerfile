# Download base image debian jessie
FROM python:3.7-slim

# Infos
LABEL maintainer="Swann Martinez"
LABEL version="0.2"
LABEL description="Blender addon testing image."

# RUN apk --no-cache add blender \
RUN apt update && apt install -f -y adwaita-icon-theme at-spi2-core blender-data bzip2 dbus  \
                                    dbus-user-session dconf-gsettings-backend dconf-service dmsetup file \
                                    fontconfig fontconfig-config fonts-dejavu fonts-dejavu-core \
                                    fonts-dejavu-extra gdal-data glib-networking glib-networking-common \
                                    glib-networking-services gsettings-desktop-schemas gtk-update-icon-cache \
                                    hicolor-icon-theme i965-va-driver intel-media-va-driver krb5-locales \
                                    libaacs0 libaec0 libaom0 libapparmor1 libargon2-1 libarmadillo9 libarpack2 \
                                    libasound2 libasound2-data libass9 libasyncns0 libatk-bridge2.0-0 \
                                    libatk1.0-0 libatk1.0-data libatomic1 libatspi2.0-0 libavahi-client3 \
                                    libavahi-common-data libavahi-common3 libavc1394-0 libavcodec58 \
                                    libavdevice58 libavfilter7 libavformat58 libavresample4 libavutil56 \
                                    libbdplus0 libblas3 libblosc1 libbluray2 libboost-atomic1.67.0 \
                                    libboost-chrono1.67.0 libboost-date-time1.67.0 libboost-filesystem1.67.0 \
                                    libboost-iostreams1.67.0 libboost-locale1.67.0 libboost-regex1.67.0 \
                                    libboost-system1.67.0 libboost-thread1.67.0 libbs2b0 libbsd0 libcaca0 \
                                    libcairo-gobject2 libcairo2 libcap2 libcdio-cdda2 libcdio-paranoia2 \
                                    libcdio18 libcharls2 libchromaprint1 libcodec2-0.8.1 libcolord2 libcroco3 \
                                    libcryptsetup12 libcrystalhd3 libcups2 libcurl3-gnutls libdap25 \
                                    libdapclient6v5 libdapserver7v5 libdatrie1 libdbus-1-3 libdc1394-22 \
                                    libdcmtk14 libdconf1 libdevmapper1.02.1 libdrm-amdgpu1 libdrm-common \
                                    libdrm-intel1 libdrm-nouveau2 libdrm-radeon1 libdrm2 libedit2 libelf1 \
                                    libepoxy0 libepsilon1 libexif12 libfftw3-double3 libflac8 libflite1 \
                                    libfontconfig1 libfreetype6 libfreexl1 libfribidi0 libfyba0 libgd3 libgdal20 \
                                    libgdcm2.8 libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-bin libgdk-pixbuf2.0-common \
                                    libgeos-3.7.1 libgeos-c1v5 libgeotiff2 libgfortran5 libgif7 libgl1 \
                                    libgl1-mesa-dri libglapi-mesa libglew2.1 libglib2.0-0 libglib2.0-data \
                                    libglu1-mesa libglvnd0 libglx-mesa0 libglx0 libgme0 libgomp1 libgphoto2-6 \
                                    libgphoto2-l10n libgphoto2-port12 libgraphite2-3 libgsm1 libgssapi-krb5-2 \
                                    libgtk-3-0 libgtk-3-bin libgtk-3-common libharfbuzz0b libhdf4-0-alt \
                                    libhdf5-103 libice6 libicu63 libidn11 libiec61883-0 libigdgmm5 libilmbase23 \
                                    libip4tc0 libjack-jackd2-0 libjbig0 libjemalloc2 libjpeg62-turbo libjson-c3 \
                                    libjson-glib-1.0-0 libjson-glib-1.0-common libk5crypto3 libkeyutils1 \
                                    libkmlbase1 libkmlconvenience1 libkmldom1 libkmlengine1 libkmlregionator1 \
                                    libkmlxsd1 libkmod2 libkrb5-3 libkrb5support0 liblapack3 liblcms2-2 \
                                    libldap-2.4-2 libldap-common liblilv-0-0 libllvm7 liblog4cplus-1.1-9 \
                                    libltdl7 libmagic-mgc libmagic1 libmariadb3 libminizip1 libmp3lame0 \
                                    libmpdec2 libmpg123-0 libmysofa0 libnetcdf13 libnghttp2-14 libnorm1 libnspr4 \
                                    libnss-systemd libnss3 libnuma1 libodbc1 libogdi3.2 libogg0 libopenal-data \
                                    libopenal1 libopencolorio1v5 libopencv-core3.2 libopencv-imgcodecs3.2 \
                                    libopencv-imgproc3.2 libopencv-videoio3.2 libopenexr23 libopenimageio2.0 \
                                    libopenjp2-7 libopenmpt0 libopenvdb5.2 libopus0 libpam-systemd \
                                    libpango-1.0-0 libpangocairo-1.0-0 libpangoft2-1.0-0 libpciaccess0 \
                                    libpgm-5.2-0 libpixman-1-0 libpng16-16 libpoppler82 libpopt0 libpostproc55 \
                                    libpq5 libproj13 libproxy1v5 libpsl5 libpulse0 libpython3-stdlib \
                                    libpython3.7 libpython3.7-minimal libpython3.7-stdlib libqhull7 libquadmath0 \
                                    libraw1394-11 libraw19 librest-0.7-0 librsvg2-2 librsvg2-common librtmp1 \
                                    librubberband2 libsamplerate0 libsasl2-2 libsasl2-modules \
                                    libsasl2-modules-db libsdl2-2.0-0 libsensors-config libsensors5 libserd-0-0 \
                                    libshine3 libslang2 libsm6 libsnappy1v5 libsndfile1 libsndio7.0 libsocket++1 \
                                    libsodium23 libsord-0-0 libsoup-gnome2.4-1 libsoup2.4-1 libsoxr0 \
                                    libspatialite7 libspeex1 libspnav0 libsratom-0-0 libssh-gcrypt-4 libssh2-1 \
                                    libsuperlu5 libswresample3 libswscale5 libsz2 libtbb2 libthai-data libthai0 \
                                    libtheora0 libtiff5 libtinyxml2.6.2v5 libtwolame0 liburiparser1 libusb-1.0-0 \
                                    libva-drm2 libva-x11-2 libva2 libvdpau-va-gl1 libvdpau1 libvidstab1.1 \
                                    libvorbis0a libvorbisenc2 libvorbisfile3 libvpx5 libwavpack1 \
                                    libwayland-client0 libwayland-cursor0 libwayland-egl1 libwebp6 libwebpmux3 \
                                    libwrap0 libx11-6 libx11-data libx11-xcb1 libx264-155 libx265-165 libxau6 \
                                    libxcb-dri2-0 libxcb-dri3-0 libxcb-glx0 libxcb-present0 libxcb-render0 \
                                    libxcb-shape0 libxcb-shm0 libxcb-sync1 libxcb-xfixes0 libxcb1 libxcomposite1 \
                                    libxcursor1 libxdamage1 libxdmcp6 libxerces-c3.2 libxext6 libxfixes3 libxi6 \
                                    libxinerama1 libxkbcommon0 libxml2 libxpm4 libxrandr2 libxrender1 \
                                    libxshmfence1 libxss1 libxtst6 libxv1 libxvidcore4 libxxf86vm1 \
                                    libyaml-cpp0.6 libzmq5 libzvbi-common libzvbi0 lsb-base mariadb-common \
                                    mesa-va-drivers mesa-vdpau-drivers mime-support mysql-common odbcinst \
                                    odbcinst1debian2 poppler-data proj-bin proj-data publicsuffix python3 \
                                    python3-minimal python3.7 python3.7-minimal sensible-utils shared-mime-info \
                                    systemd systemd-sysv ucf va-driver-all vdpau-driver-all x11-common \
                                    xdg-user-dirs xkb-data xz-utils
RUN python -m pip install https://gitlab.com/slumber/blender-addon-tester/-/archive/fix-binary-file-handling/blender-addon-tester-fix-binary-file-handling.tar.gz

