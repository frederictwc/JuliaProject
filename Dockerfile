FROM julia:1.5-alpine AS builder

WORKDIR /home/src
COPY . .
RUN apk add python3

FROM alpine
WORKDIR /app
COPY --from=builder /home/src /app/
COPY --from=builder /usr /usr/

ENTRYPOINT ["sh"]

