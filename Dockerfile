FROM alpine:3.4

RUN apk update && \
  apk upgrade && \
  apk add --no-cache git git-daemon
RUN mkdir -p /git/
EXPOSE 9418
CMD ["git", "daemon", "--reuseaddr", "--export-all", "--base-path=/git/", "/git"]
