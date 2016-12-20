FROM mhart/alpine-node:6.9

ENV NODE_ENV production
ENV SITE_URL http://localhost:2368

WORKDIR /var/www
RUN mkdir ghost
#COPY ghost-image/ghost /var/www/ghost
COPY ghost /var/www/ghost
WORKDIR /var/www/ghost

RUN addgroup www-data
RUN adduser ghost -G www-data -S /bin/bash
RUN chown ghost:www-data /var/www/ghost
RUN chown ghost:www-data /var/www/ghost
RUN chown ghost:www-data -R /var/www/ghost
USER ghost
RUN npm install --production

EXPOSE 2368

VOLUME ["/var/www/ghost/content/data"]

CMD ["npm", "start"]