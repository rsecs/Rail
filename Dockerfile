FROM lovekl/section
EXPOSE 3000
RUN apk update && \
    apk add --no-cache ca-certificates caddy wget && \
    rm -rf /var/cache/apk/*

ADD start.sh /start.sh
RUN chmod +x /start.sh

CMD /start.sh
