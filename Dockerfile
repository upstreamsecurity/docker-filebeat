FROM alpine:3.6

ENV FILEBEAT_VERSION=5.4.3
ENV FILEBEAT_DIR=filebeat-${FILEBEAT_VERSION}-linux-x86_64
ENV FILEBEAT_FILE=${FILEBEAT_DIR}.tar.gz
ENV TARGET_DIR=/opt/filebeat

RUN apk update && \
    apk add ca-certificates curl openssl && \
    update-ca-certificates && \
	wget --no-check-certificate https://artifacts.elastic.co/downloads/beats/filebeat/${FILEBEAT_FILE} && \
	mkdir /opt /conf /logs-1 /logs-2 && \
	tar xzf ${FILEBEAT_FILE} -C /opt && \
	mv /opt/${FILEBEAT_DIR} ${TARGET_DIR} && \
	rm ${FILEBEAT_FILE} && \
	mkdir ${TARGET_DIR}/conf && \
	cp ${TARGET_DIR}/filebeat.yml /conf/filebeat.yml && \
    rm -rf /var/cache/apk/* /root/${FILEBEAT_FILE}
	
VOLUME /conf
VOLUME /logs

ENTRYPOINT ["/opt/filebeat/filebeat", "-c", "/conf/filebeat.yml"]
