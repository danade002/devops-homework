FROM node:16.13.0
WORKDIR /app
COPY . .
RUN npm i cors -P
RUN npm install -g  
CMD ["npm", "run", "start:prod"]
