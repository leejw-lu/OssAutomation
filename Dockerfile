FROM node:16.13.1
RUN apt-get update && mkdir -p /app
COPY package*.json /app/
WORKDIR /app/

# Install Node.js dependencies defined in '/app/packages.json'
RUN npm install

COPY app.js /app/
COPY ./ /app/

ENV PORT 5000
EXPOSE 5000

# Start the application
CMD ["npm", "start"]
