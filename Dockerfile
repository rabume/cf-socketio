FROM node:15
WORKDIR /app
COPY ./socket.io/package.json .
ARG NODE_ENV
RUN npm install
COPY ./socket.io ./
EXPOSE 8080
CMD ["node", "server.js"]