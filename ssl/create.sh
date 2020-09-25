#!/bin/bash
# bash create.sh "NAME OF CLUSTER"
password="$1"

# Root CA
openssl genrsa -out root-ca-key.pem 4096
openssl req -new -x509 -sha256 -key root-ca-key.pem -out root-ca.pem -config root.cnf

# Admin cert
openssl genrsa -out admin-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in admin-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out admin-key.pem
openssl req -new -key admin-key.pem -out admin.csr -config admin.cnf
openssl x509 -req -in admin.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out admin.pem -extfile admin.cnf
openssl x509 -req -in admin.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out admin.crt -extfile admin.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in admin.crt -inkey admin-key.pem -passout pass:$1 > admin.p12
# Node1 cert
openssl genrsa -out node1-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in node1-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out node1-key.pem
openssl req -new -key node1-key.pem -out node1.csr -config node1.cnf
openssl x509 -req -in node1.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node1.pem -extfile node1.cnf
openssl x509 -req -in node1.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node1.crt -extfile node1.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in node1.crt -inkey node1-key.pem -passout pass:$1 > node1.p12

# node2 cert
openssl genrsa -out node2-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in node2-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out node2-key.pem
openssl req -new -key node2-key.pem -out node2.csr -config node2.cnf
openssl x509 -req -in node2.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node2.pem -extfile node2.cnf
openssl x509 -req -in node2.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node2.crt -extfile node2.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in node2.crt -inkey node2-key.pem -passout pass:$1 > node2.p12

# node3 cert
openssl genrsa -out node3-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in node3-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out node3-key.pem
openssl req -new -key node3-key.pem -out node3.csr -config node3.cnf
openssl x509 -req -in node3.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node3.pem -extfile node3.cnf
openssl x509 -req -in node3.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node3.crt -extfile node3.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in node3.crt -inkey node3-key.pem -passout pass:$1 > node3.p12

# node4 cert
openssl genrsa -out node4-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in node4-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out node4-key.pem
openssl req -new -key node4-key.pem -out node4.csr -config node4.cnf
openssl x509 -req -in node4.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node4.pem -extfile node4.cnf
openssl x509 -req -in node4.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node4.crt -extfile node4.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in node4.crt -inkey node4-key.pem -passout pass:$1 > node4.p12

# node5 cert
openssl genrsa -out node5-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in node5-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out node5-key.pem
openssl req -new -key node5-key.pem -out node5.csr -config node5.cnf
openssl x509 -req -in node5.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node5.pem -extfile node5.cnf
openssl x509 -req -in node5.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out node5.crt -extfile node5.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in node5.crt -inkey node5-key.pem -passout pass:$1 > node5.p12

# Kibana cert
openssl genrsa -out kibana-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in kibana-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out kibana-key.pem
openssl req -new -key kibana-key.pem -out kibana.csr -config kibana.cnf
openssl x509 -req -in kibana.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out kibana.pem -extfile kibana.cnf
openssl x509 -req -in kibana.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out kibana.crt -extfile kibana.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in kibana.crt -inkey kibana-key.pem -passout pass:$1 > kibana.p12

# hive cert
openssl genrsa -out hive-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in hive-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out hive-key.pem
openssl req -new -key hive-key.pem -out hive.csr -config hive.cnf
openssl x509 -req -in hive.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out hive.pem -extfile hive.cnf
openssl x509 -req -in hive.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out hive.crt -extfile hive.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in hive.crt -inkey hive-key.pem -passout pass:$1 > hive.p12

# hive cert
openssl genrsa -out vector-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in vector-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out vector-key.pem
openssl req -new -key vector-key.pem -out vector.csr -config vector.cnf
openssl x509 -req -in vector.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out vector.pem -extfile vector.cnf
openssl x509 -req -in vector.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out vector.crt -extfile vector.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in vector.crt -inkey vector-key.pem -passout pass:$1 > vector.p12


# shuffle cert
openssl genrsa -out shuffle-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in shuffle-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out shuffle-key.pem
openssl req -new -key shuffle-key.pem -out shuffle.csr -config shuffle.cnf
openssl x509 -req -in shuffle.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out shuffle.pem -extfile shuffle.cnf
openssl x509 -req -in shuffle.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out shuffle.crt -extfile shuffle.cnf
openssl pkcs12 -export -chain -CAfile root-ca.pem -in shuffle.crt -inkey shuffle-key.pem -passout pass:$1 > shuffle.p12

## Keystore And Truststores
openssl pkcs12 -export -out root-ca.pkcs12 -in root-ca.pem -inkey root-ca-key.pem -passout pass:$1
openssl pkcs12 -export -out admin.pkcs12 -in admin.pem -inkey admin-key.pem -passout pass:$1
openssl pkcs12 -export -out node1.pkcs12 -in node1.pem -inkey node1-key.pem -passout pass:$1
openssl pkcs12 -export -out node2.pkcs12 -in node2.pem -inkey node2-key.pem -passout pass:$1
openssl pkcs12 -export -out node3.pkcs12 -in node3.pem -inkey node3-key.pem -passout pass:$1
openssl pkcs12 -export -out node4.pkcs12 -in node4.pem -inkey node4-key.pem -passout pass:$1
openssl pkcs12 -export -out node5.pkcs12 -in node5.pem -inkey node5-key.pem -passout pass:$1
openssl pkcs12 -export -out hive.pkcs12 -in hive.pem -inkey hive-key.pem -passout pass:$1
openssl pkcs12 -export -out shuffle.pkcs12 -in shuffle.pem -inkey shuffle-key.pem -passout pass:$1

keytool -importkeystore -srckeystore root-ca.pkcs12 -srcstoretype pkcs12 -destkeystore root-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
#Truststores
keytool -importcert -v -trustcacerts -alias root -file root-ca.pem -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias admin -file admin.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias node1 -file node1.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias node2 -file node2.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias node3 -file node3.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias node4 -file node4.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias node5 -file node5.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias kibana -file kibana.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias hive -file hive.crt -keystore truststore.jks -storepass $1 -noprompt
keytool -importcert -alias shuffle -file shuffle.crt -keystore truststore.jks -storepass $1 -noprompt

keytool -importkeystore -srckeystore admin.pkcs12 -srcstoretype pkcs12 -destkeystore admin-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
keytool -importkeystore -srckeystore node1.pkcs12 -srcstoretype pkcs12 -destkeystore node1-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
keytool -importkeystore -srckeystore node2.pkcs12 -srcstoretype pkcs12 -destkeystore node2-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
keytool -importkeystore -srckeystore node3.pkcs12 -srcstoretype pkcs12 -destkeystore node3-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
keytool -importkeystore -srckeystore node4.pkcs12 -srcstoretype pkcs12 -destkeystore node4-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
keytool -importkeystore -srckeystore node5.pkcs12 -srcstoretype pkcs12 -destkeystore node5-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt
keytool -importkeystore -srckeystore hive.pkcs12 -srcstoretype pkcs12 -destkeystore hive-keystore.jks -deststoretype JKS -srcstorepass $1 -storepass $1 -file root-ca.pem -noprompt


## Movement
cp {root-ca.pem,root-ca-key.pem,node1.pem,node1-key.pem,admin.pem,admin-key.pem,truststore.jks,node1-keystore.jks,admin-keystore.jks} ../elasticsearch-node1/elasticsearch-node1-docker/
cp {root-ca.pem,root-ca-key.pem,node2.pem,node2-key.pem,admin.pem,admin-key.pem,truststore.jks,node2-keystore.jks,admin-keystore.jks} ../elasticsearch-node2/elasticsearch-node2-docker/
cp {root-ca.pem,root-ca-key.pem,node3.pem,node3-key.pem,admin.pem,admin-key.pem,truststore.jks,node3-keystore.jks,admin-keystore.jks} ../elasticsearch-node3/elasticsearch-node3-docker/
cp {root-ca.pem,root-ca-key.pem,node4.pem,node4-key.pem,admin.pem,admin-key.pem,truststore.jks,node4-keystore.jks,admin-keystore.jks} ../elasticsearch-node4/elasticsearch-node4-docker/
cp {root-ca.pem,root-ca-key.pem,node5.pem,node5-key.pem,admin.pem,admin-key.pem,truststore.jks,node5-keystore.jks,admin-keystore.jks} ../elasticsearch-node5/elasticsearch-node5-docker/
cp {root-ca.pem,root-ca-key.pem,hive.pem,hive-key.pem,admin.pem,admin-key.pem,truststore.jks,hive-keystore.jks,admin-keystore.jks} ../thehive/
