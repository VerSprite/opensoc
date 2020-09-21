# Create SSL
### cd ssl & bash create.sh "PassWord"

# Deploy Docker image
## From Main Directory
### docker-compose up

# Setup admin for each node
### docker exec -it elasticsearch-node$ /bin/bash
### bash kickstarttrust.sh
### exit


Access Kibana at https://IPADDRESS:5601

