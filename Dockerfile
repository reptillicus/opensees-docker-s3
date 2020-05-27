FROM hanlindong/opensees

WORKDIR /
RUN apk add  wget
RUN wget https://github.com/kahing/goofys/releases/latest/download/goofys

RUN chmod +x goofys
RUN mv goofys /usr/local/bin/goofys
COPY entrypoint.sh /usr/local/bin/
COPY freeFieldEffective.tcl /
RUN chmod +x /usr/local/bin/entrypoint.sh
RUN ln -s /usr/local/bin/entrypoint.sh


ENTRYPOINT ["entrypoint.sh"]
CMD ["OpenSees","/freeFieldEffective.tcl"]
