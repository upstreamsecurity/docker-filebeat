# Minimal Docker Filebeat image
Filebeat docker image based on Apline Linux

## What is Filebeat?
Filebeat is a Lightweight Shipper for Logs.
Filebeat helps you keep the simple things simple by offering a lightweight way to forward and centralize logs and files.

## Supported tags and respective `Dockerfile` links

-	[`5.4.3`, `latest` (*Dockerfile*)](https://github.com/upstreamsecurity/docker-filebeat/blob/master/Dockerfile)

## Build and update process

This image is automatically built at every push of this repository and every time that the `alpine:3.6` base image gets updated in order to ensure that bugfixes and security updates are immediately applied.

## Run

```bash
docker run -v /path/to/conf-dir:/conf -v /path/to/logs-dir:/logs upstreamsecurity:docker-filebeat
```
## Filebeat Configuration file
official docs: https://www.elastic.co/guide/en/beats/filebeat/current/filebeat-configuration.html
