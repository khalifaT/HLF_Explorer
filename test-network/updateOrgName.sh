#!/bin/bash


# This script aims to update the name of fabric network and organizations of the first network
# proposed in the HF turoial (https://hyperledger-fabric.readthedocs.io/en/latest/test_network.html)


export ORG_NAME=$1
sed "s/OLD_NAME/$1/g" templates/docker-compose-ca.yaml > docker/docker-compose-ca.yaml
sed "s/OLD_NAME/$1/g" templates/docker-compose-couch.yaml > docker/docker-compose-couch.yaml
sed "s/OLD_NAME/$1/g" templates/docker-compose-test-net.yaml > docker/docker-compose-test-net.yaml
sed "s/OLD_NAME/$1/g" templates/docker-compose.yaml > explorer/docker-compose.yaml
sed "s/OLD_NAME/$1/g" templates/config.json > explorer/config.json
sed "s/OLD_NAME/$1/g" templates/configtx.yaml > configtx/configtx.yaml
sed "s/OLD_NAME/$1/g" templates/test-network.json > explorer/connection-profile/test-network.json
sed "s/OLD_NAME/$1/g" templates/ccp-template.yaml > organizations/ccp-template.yaml
sed "s/OLD_NAME/$1/g" templates/ccp-template.json > organizations/ccp-template.json


