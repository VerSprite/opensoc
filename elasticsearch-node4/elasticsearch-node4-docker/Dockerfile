FROM amazon/opendistro-for-elasticsearch:1.9.0
COPY --chown=elasticsearch:elasticsearch elasticsearch.yml /usr/share/elasticsearch/config/elasticsearch.yml
COPY --chown=elasticsearch:elasticsearch node4.pem /usr/share/elasticsearch/config/node.pem
COPY --chown=elasticsearch:elasticsearch node4-key.pem /usr/share/elasticsearch/config/node-key.pem
COPY --chown=elasticsearch:elasticsearch root-ca.pem /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch root-ca-key.pem /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch admin.pem /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch admin-key.pem /usr/share/elasticsearch/config/
COPY --chown=elasticsearch:elasticsearch node4-keystore.jks /usr/share/elasticsearch/config/node-keystore.jks
COPY --chown=elasticsearch:elasticsearch truststore.jks /usr/share/elasticsearch/config/node-truststore.jks
COPY --chown=elasticsearch:elasticsearch admin-keystore.jks /usr/share/elasticsearch/config/admin-keystore.jks
COPY --chown=elasticsearch:elasticsearch kickoff.sh /usr/share/elasticsearch/
COPY --chown=elasticsearch:elasticsearch kickofftrust.sh /usr/share/elasticsearch/
