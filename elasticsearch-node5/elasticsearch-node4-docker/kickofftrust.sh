#!/bin/bash
bash /usr/share/elasticsearch/plugins/opendistro_security/tools/securityadmin.sh -cd /usr/share/elasticsearch/plugins/opendistro_security/securityconfig/ \
-icl -nhnv -ts /usr/share/elasticsearch/config/node-truststore.jks -tspass vGyqdHex3d3tS9 -ks /usr/share/elasticsearch/config/admin-keystore.jks -kspass vGyqdHex3d3tS9
