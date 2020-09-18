# Docker-Spyfall

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/61d392e3c86a46988cf43d7b07a1e920)](https://www.codacy.com/manual/A-Duck/Docker-Spyfall?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=A-Duck/Docker-Spyfall&amp;utm_campaign=Badge_Grade)

This repo provides a dockerfile for Tanner Krewson's Spyfall Server.

  * [Tanner's Spyfall repo](https://github.com/tannerkrewson/spyfall)
  * [Dockerhub page for this repo](https://hub.docker.com/r/aduck/spyfall)

## Docker Run Command

``` bash
docker run --name Spyfall -p 80:3000 -d aduck/spyfall
```

## Docker Compose Snippet

``` dockerfile
Spyfall:
    image: aduck/spyfall
    ports:
      - 80:3000
    restart: unless-stopped
```

The server should then be accessible on port 80 (or whatever you map it to)
