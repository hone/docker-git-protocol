FROM heroku/cedar:14

RUN mkdir -p /git/
EXPOSE 9418
CMD ["git", "daemon", "--reuseaddr", "--export-all", "--base-path=/git/", "/git"]
