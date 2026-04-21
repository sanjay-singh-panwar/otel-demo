#Base image
FROM node:18

#working dir
WORKDIR /app

# copy package.json
COPY package.json /.

#install packages
RUN npm install

#Copy everything from host to inside container
COPY . .

EXPOSE 8080

CMD ["node","app.js"]
