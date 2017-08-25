FROM openjdk

# install davmail with dependencies
# see https://sourceforge.net/projects/davmail/files/davmail/
RUN wget -O davmail.deb "https://sourceforge.net/projects/davmail/files/davmail/4.8.0/davmail_4.8.0.3-2488-1_all.deb/download" \
 && dpkg --unpack davmail.deb \
 && apt-get update \
 && apt-get install --fix-broken --no-remove --assume-yes \
 && rm -rf davmail.deb /var/lib/apt/lists/*

USER nobody
CMD davmail
