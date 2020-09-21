#!/bin/bash 
# bash create.sh "NAME OF CLUSTER"
password="$2"
device="$1"
# update cert
openssl genrsa -out $1-key-temp.pem 4096
openssl pkcs8 -inform PEM -outform PEM -in $1-key-temp.pem -topk8 -nocrypt -v1 PBE-SHA1-3DES -out $1-key.pem
openssl req -new -key $1-key.pem -out $1.csr -config $1.cnf
openssl x509 -req -in $1.csr -CA root-ca.pem -CAkey root-ca-key.pem -CAcreateserial -sha256 -out $1.pem -extfile $1.cnf


# Keystore And Truststores
openssl pkcs12 -export -out $1.pkcs12 -in $1.pem -inkey $1-key.pem -passout pass:$2

keytool -importkeystore -srckeystore $1.pkcs12 -srcstoretype pkcs12 -destkeystore $1keystore.jks -deststoretype JKS -srcstorepass $2 -storepass $2 -noprompt

