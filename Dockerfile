FROM amazoncorretto:18-alpine3.15
ENTRYPOINT ["/usr/bin/noicecurse.sh"]

LABEL org.opencontainers.image.source=https://github.com/guneetsahai-neo/noicecurse

COPY noicecurse.sh /usr/bin/noicecurse.sh
RUN chmod +x /usr/bin/noicecurse.sh
COPY target/noicecurse.jar /usr/share/noicecurse/noicecurse.jar