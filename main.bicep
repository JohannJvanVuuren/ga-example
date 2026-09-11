@minLength(3)
@maxLength(24)
@description('The storage name of the storage resource. Must be globally unique.')
param storageName string = 'storagespace'

@description('A unique suffix to add to names')
param uniqueSuffix string = uniqueString(resourceGroup().id)

@description('The name of the storage account SKU')
param skuName string = 'Premium_LRS'

@description('The location where the storage resource should be created.')
param location string = 'southafricanorth'

module storageAccount 'modules/storage.bicep' = {
  name: '${storageName}${uniqueSuffix}Module'
  params: {
    storageName: take('${storageName}${uniqueSuffix}', 24)
    location: location
    skuName: skuName
  }
}
