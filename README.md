<<<<<<< HEAD
# Your_First_HF_Network

This project will permit to launch your first customized network with Hyperledger explorer service.
It will help the developer to focus more on the development of his smart contract.


## Prerequisites

We have deployed this project with these specifications:
* Docker version 20.10.5, build 55c4c88
* docker-compose version 1.28.5, build c4eb3a1f

## Installation

### Installation of the fabric binaries and images
```
./install.sh
```

### Network deployement

Inside the test_network directory:

* You have first to  stop the previous deployement and clean it
```
./network.sh down
```
### Update the name of the network and the organization

* You may modify the variables of the file .make_env

```
. ./updateName.sh orgName
```
As an argument you have to put the name of your organization



*  You have to lanuch the network

```
./network.sh up  createChannel -ca
```

### Smart contract deployement

* As an example,  you may now  deploy  the asset-transfer-basic chaincode to the basic channel:

```
./network.sh deployCC -ccn basic -ccp ../asset-transfer-basic/chaincode-go -ccl go

```
We have deployed this chaincode as an example, you have to change it with your smart contract

### Hyperledger explorer deployement
```
./network.sh deployExplorer
```
Now, we may view the monitoring dashboard using this URL (http://Your_IP_SERVER:8083).
The creadentials of the admin  are ("id": "exploreradmin","password": "exploreradminpw")


### Interacting with the SC (with cli)



````
SETGlobals 1
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.$ORG_NAME.com --tls --cafile "${PWD}/organizations/ordererOrganizations/$ORG_NAME.com/orderers/orderer.$ORG_NAME.com/msp/tlscacerts/tlsca.$ORG_NAME.com-cert.pem" -C mychannel -n basic --peerAddresses localhost:7051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.$ORG_NAME.com/peers/peer0.org1.$ORG_NAME.com/tls/ca.crt" --peerAddresses localhost:9051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.$ORG_NAME.com/peers/peer0.org2.$ORG_NAME.com/tls/ca.crt" -c '{"function":"InitLedger","Args":[]}'
peer chaincode invoke -o localhost:7050 --ordererTLSHostnameOverride orderer.$ORG_NAME.com --tls --cafile "${PWD}/organizations/ordererOrganizations/$ORG_NAME.com/orderers/orderer.$ORG_NAME.com/msp/tlscacerts/tlsca.$ORG_NAME.com-cert.pem" -C mychannel -n basic --peerAddresses localhost:7051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org1.$ORG_NAME.com/peers/peer0.org1.$ORG_NAME.com/tls/ca.crt" --peerAddresses localhost:9051 --tlsRootCertFiles "${PWD}/organizations/peerOrganizations/org2.$ORG_NAME.com/peers/peer0.org2.$ORG_NAME.com/tls/ca.crt" -c '{"function":"TransferAsset","Args":["asset6","Christopher"]}'
````




## Notes


*  With this tutorial, you may have your private network already configured with Hyperledger explorer 
*  This will help  you to focus more on the implementation of your smart contrat and  to view, invoke, deploy or query blocks, transactions and associated data, network information using the hyperledger explorer.
* 
*  Main contributions of this tutorial:


 * [x] Update the test_network tutorial to create a personal HF network with your organisation name
 * [x] Automate some commands to deploy the first network and interact with the SC
 * [x] Configuration and integration of the hyperledger explorer with the network




=======
# HLF_Explorer
>>>>>>> f98327dd4fab0cdb6fec7487864fa4368f50470c
