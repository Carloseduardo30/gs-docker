FROM node:16 as builder

COPY package.json . 
COPY src src
COPY public public 

RUN yarn install
RUN yarn build

FROM nginx:1.19

COPY ./nginx/nginx.conf /etc/nginx/nginx.conf
COPY --from=builder /build /usr/share/nginx/html

EXPOSE 80
