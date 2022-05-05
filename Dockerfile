FROM caddy:2.5.0

WORKDIR /

ENV PORT 80
EXPOSE 80

RUN mkdir /usr/src
RUN mkdir /usr/src/pages
COPY ./Caddyfile /etc/caddy/Caddyfile
COPY ./pages /usr/src/pages

# Start the service
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
