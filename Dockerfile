FROM ubuntu:18.04

RUN	apt-get update && apt-get upgrade -y
# Instalace balíčků, co jsou potřeba pro buildění
RUN	apt-get install -y \
	cmake \
	make \
	git \
	g++ \
	build-essential \
	libgl1-mesa-glx \
	libgl1-mesa-dri \
	mesa-common-dev \
	freeglut3 \
	libgtk2.0-dev \
	libwxgtk3.0-dev \
	libwx-perl \
	libxmu-dev \
	xdg-utils
	
# SSH server
RUN	apt-get install -qy openssh-server && \
	sed -i 's|session    required     pam_loginuid.so|session    optional     pam_loginuid.so|g' /etc/pam.d/sshd && \
	mkdir -p /var/run/sshd && \
# Úklid starých balíčků
	apt-get -qy autoremove

# SSH port
EXPOSE	22
CMD	["/usr/sbin/sshd", "-D"]
