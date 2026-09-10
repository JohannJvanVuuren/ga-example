param storageName string
param location string
param skuName string

resource storageaccount 'Microsoft.Storage/storageAccounts@2026-04-01' = {
  name: storageName
  location: location
  kind: 'StorageV2'
  sku: {
    name: skuName
  }
  properties: {
    accessTier: 'Hot'
  }
}
