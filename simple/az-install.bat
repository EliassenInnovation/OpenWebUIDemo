@REM CALL az login 

SET APP_RESOURCE_GROUP=Personal.MWhitted
SET APP_ENVIRONMENT=open-webui-demo
SET APP_LOCATION=westus2
SET APP_STORAGE=openwebuidemostorage

ECHO APP_RESOURCE_GROUP=%APP_RESOURCE_GROUP%
ECHO APP_ENVIRONMENT=%APP_ENVIRONMENT%
ECHO APP_LOCATION=%APP_LOCATION%
ECHO APP_STORAGE=%APP_STORAGE%

@REM CALL az containerapp env create --resource-group %APP_RESOURCE_GROUP% --name %APP_ENVIRONMENT%
@REM CALL az containerapp compose create --resource-group %APP_RESOURCE_GROUP% --environment %APP_ENVIRONMENT% --compose-file-path .\docker-compose.yaml

CALL az storage account create ^
  --name %APP_STORAGE% ^
  --resource-group %APP_RESOURCE_GROUP% ^
  --location westus2 ^
  --sku Standard_RAGRS ^
  --kind StorageV2 ^
  --min-tls-version TLS1_2 ^
  --allow-blob-public-access false
