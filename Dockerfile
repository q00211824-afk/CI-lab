FROM alpine:latest
RUN apk add --no-cache bash
COPY src/ /app/
WORKDIR /app
ENTRYPOINT ["bash", "main.sh"]
