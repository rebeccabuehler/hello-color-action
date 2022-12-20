FROM node:12
# Create app director
COPY package*.json ./

RUN npm install
RUN npm run build
COPY . .
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
EXPOSE 3000
CMD [ "npm", "start" ]