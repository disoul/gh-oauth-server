from node:8.9.4
WORKDIR /app/gh
COPY ./ /app/gh

EXPOSE 3000

RUN npm install pm2 -g \
  && npm install yarn -g \
  && yarn

CMD ["pm2-runtime", "server.js"]
