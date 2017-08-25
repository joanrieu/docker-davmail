FROM openjdk

# see https://sourceforge.net/projects/davmail/files/davmail/
RUN wget -O davmail.deb "https://sourceforge.net/projects/davmail/files/davmail/4.8.0/davmail_4.8.0.3-2488-1_all.deb/download"

# install davmail with dependencies
RUN apt-get update \
 && dpkg --unpack davmail.deb \
 && apt-get install --fix-broken --no-remove --assume-yes \
 && rm -rf /var/lib/apt/lists/*
