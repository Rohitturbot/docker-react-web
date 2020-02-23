FROM node:alpine as builder
WORKDIR '/app'
COPY package.json .
RUN npm i
COPY . .
RUN npm run build


FROM nginx
## This is for elasticbeanstalk to get traffic in
EXPOSE 80
COPY --from=builder /app/build /usr/share/nginx/html