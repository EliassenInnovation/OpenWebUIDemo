#!/bin/bash

# Variables
APP_RESOURCE_GROUP="Personal.MWhitted"
APP_ENVIRONMENT="open-webui-demo"
APP_LOCATION="westus2"
APP_STORAGE="openwebuidemostorage"

# Echo the variables
echo "APP_RESOURCE_GROUP=$APP_RESOURCE_GROUP"
echo "APP_ENVIRONMENT=$APP_ENVIRONMENT"
echo "APP_LOCATION=$APP_LOCATION"
echo "APP_STORAGE=$APP_STORAGE"

# Uncomment these lines if you want to create the Container App environment and deploy using Docker Compose
# az containerapp env create --resource-group "$APP_RESOURCE_GROUP" --name "$APP_ENVIRONMENT"
# az containerapp compose create --resource-group "$APP_RESOURCE_GROUP" --environment "$APP_ENVIRONMENT" --compose-file-path ./docker-compose.yaml

# Create a storage account
az storage account create \
  --name "$APP_STORAGE" \
  --resource-group "$APP_RESOURCE_GROUP" \
  --location "$APP_LOCATION" \
  --sku Standard_RAGRS \
  --kind StorageV2 \
  --min-tls-version TLS1_2 \
  --allow-blob-public-access false
