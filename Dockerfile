FROM julia:1.5-alpine

WORKDIR /home/src
COPY . .

ENTRYPOINT ["sh"]

