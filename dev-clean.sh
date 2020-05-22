RUN apt-mark manual libev4
RUN apt-fast purge `grep -v '^[\^#]' dev-dpkg.list`
RUN ./poobuntu-clean.sh
RUN rm -v dev-dpkg.list

