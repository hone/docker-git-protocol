# Docker Git Protocol

This docker container is used to serve git repositories over the git protocol.

## Using

The docker container uses `/git/` as the base path for serving repositories, so the host volume of the git repo to be served needs to be mounted inside of `/git`.

```
$ docker run -d -P -v /path/to/repo:/git/repo hone/git-protocol
$ git clone git://[<IP Addr>](http://stackoverflow.com/questions/17157721/getting-a-docker-containers-ip-address-from-the-host)/repo
```


## Building

```
$ docker build -t hone/git-protocol .
```
