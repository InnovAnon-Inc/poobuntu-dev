RUN apt-mark manual libev4
RUN apt-fast purge `cat dev-dpkg.list`
RUN ./poobuntu-clean.sh
RUN rm -v dev-dpkg.list

