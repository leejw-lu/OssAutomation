FROM ubuntu:20.04
RUN apt-get update && apt-get -y install build-essential && mkdir –p /app
COPY . /app/
WORKDIR /app/
RUN npm install
CMD [ "node", "app.js" ] 
EXPOSE 3000

