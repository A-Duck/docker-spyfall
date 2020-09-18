# Docker-Spyfall

[![Codacy Badge](https://api.codacy.com/project/badge/Grade/159e79153c5d4d4d90ea280acab5b50c)](https://app.codacy.com/manual/A-Duck/Docker-Spyfall?utm_source=github.com&utm_medium=referral&utm_content=A-Duck/Docker-Spyfall&utm_campaign=Badge_Grade_Dashboard)

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
